class SearchTermUrl < ActiveRecord::Base
  belongs_to :search_term
  belongs_to :url

  validates_uniqueness_of :url_id, :scope => :search_term_id
end
