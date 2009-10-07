class SiteController < ApplicationController
  def index
    @twitter_urls = UrlSource.find_by_name("Twitter").urls.find(:all, :select => "count(urls.url) as count, urls.*", :conditions => "created_at > DATE_SUB(CURDATE(), INTERVAL 1 day)", :order => "count DESC", :group => "urls.url")
    @delicious_urls = UrlSource.find_by_name("Delicious").urls.find(:all, :select => "count(urls.url) as count, urls.*", :conditions => "created_at > DATE_SUB(CURDATE(), INTERVAL 1 day)", :order => "count DESC", :group => "urls.url")
  end

end
