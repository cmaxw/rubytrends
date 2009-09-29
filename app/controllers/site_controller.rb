class SiteController < ApplicationController
  def index
    @urls = Url.find(:all, :select => "count(urls.url) as count, urls.*", :conditions => "created_at > DATE_SUB(CURDATE(), INTERVAL 1 day)", :order => "count DESC", :group => "urls.url")
  end

end
