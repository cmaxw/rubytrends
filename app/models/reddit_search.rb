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
    source = "http://www.reddit.com/r/#{@search_term}.rss" # url or local file
    content = "" # raw content of rss feed will be loaded here
    uri = URI.parse(source)
    content = Net::HTTP.get(uri)
    #open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
    rss.items[0, 10].each do |item|
      link = item.description.split("\">[link]").first.split("a href=\"").last
      url = Url.create(:url => link,
        :url_source => @url_source,
        :source_identifier => item.guid.content,
        :title => item.title,
        :created_at => DateTime.parse(item.date.to_s))
      url.search_terms << @search_term_obj unless url.search_terms.include?(@search_term_obj)
    end if rss
  end
end