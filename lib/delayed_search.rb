class DelayedSearch
  def initialize(search_string)
    @search_string = search_string
    @searcher = TwitterSearch.new(search_string)
  end

  def perform
    @searcher.get_links
    Delayed::Job.enqueue DelayedSearch.new(@search_string), 0, 5.minutes.from_now
  end
end