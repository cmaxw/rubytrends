class DeliciousSearch
  def initialize(search_term)
    @search_term = search_term
  end

  def get_links
    url = URI.parse('http://feeds.delicious.com/v2/rss/tag/ruby?count=100')
    req = Net::HTTP::Get.new(url.path)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    xml = Hpricot(res.body)
    res.body
  end
end