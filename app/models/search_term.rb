class SearchTerm < ActiveRecord::Base
  belongs_to :list
  has_many :search_term_urls
  has_many :urls, :through => :search_term_urls
end
