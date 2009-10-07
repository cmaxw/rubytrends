class TwitterSearch
  def initialize(search_string)
    @search_string = search_string
  end  

  def search
    Twitter::Search.new(@search_string)
  end

  def get_links
    puts "Searching for #{@search_string}"
    search.each do |tweet|
      if search_urls = tweet.text.match(/(http:\/\/[^\s]+)/)
        search_urls.captures.each do |path|
          root_path, title = get_root_url(path)
          url_source = UrlSource.find_or_create_by_name("Twitter")
          url = Url.find_by_url_and_source_identifier_and_url_source_id(root_path, tweet.id, url_source.id)
          url ||= Url.create(:url => root_path, :source_identifier => tweet.id, :url_source => url_source, :title => title)
          url.search_terms << SearchTerm.find_or_create_by_name(@search_string)
        end
      end
    end
    true
  end

  def get_root_url(url)
    uri = URI.parse(url)
    req = Net::HTTP::Get.new(uri.path)
    res = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(req)
    }
    if res.class == Net::HTTPMovedPermanently 
      return get_root_url(res.header["Location"])
    else
      title_match = res.body.match(/<title>(.*)<\/title>/)
      title = title_match.nil? ? url : title_match[1]
      return url, title
    end
  end
end
