require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'


class RedditSearch
  def initialize(search_term)
    @search_term = search_term
    @search_term_obj = SearchTerm.find_by_name(search_term)
    @url_source = UrlSource.find_or_create_by_name("Reddit")
  end

  def get_links
    source = "http://www.reddit.com/r/ruby.rss" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
    rss.items.each do |item|
      url = Url.find(:first, :conditions => {:url_source_id => @url_source.id,
        :source_identifier => item.guid.content})
      url ||= Url.create(:url => item.link,
        :url_source => @url_source,
        :source_identifier => item.guid.content,
        :title => item.title,
        :created_at => DateTime.parse(item.date.to_s))
      url.search_terms << @search_term_obj unless url.search_terms.include?(@search_term_obj)
    end
  end
end