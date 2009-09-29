class Url < ActiveRecord::Base
  belongs_to :url_source
  has_many :search_term_urls
  has_many :search_terms, :through => :search_term_urls
end
