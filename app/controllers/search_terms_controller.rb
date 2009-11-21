class SearchTermsController < ApplicationController
  def index
    term = current_user.search_terms.find_by_name(params[:term])
    if term
    @twitter_urls = term.urls.find_all_by_url_source_id(UrlSource.find_by_name("Twitter", :select => "id").id,
      :select => "count(urls.url) as count, urls.*",
      :conditions => "urls.created_at > DATE_SUB(CURDATE(), INTERVAL 1 day)",
      :order => "count DESC",
      :group => "urls.url",
      :limit => 10)
    @delicious_urls = term.urls.find_all_by_url_source_id(UrlSource.find_by_name("Delicious", :select => "id").id,
      :select => "count(urls.url) as count, urls.*",
      :conditions => "urls.created_at > DATE_SUB(CURDATE(), INTERVAL 1 day)",
      :order => "count DESC",
      :group => "urls.url",
      :limit => 10)
    @reddit_urls = term.urls.find_all_by_url_source_id(UrlSource.find_by_name("Reddit", :select => "id").id,
      :order => "updated_at DESC",
      :limit => 10).reverse
    else
      redirect_to "/search_terms/new"
    end
    
    def new
      render :text => "new"
    end
  end

end
