# == Schema Information
# Schema version: 20090929041850
#
# Table name: search_terms
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  list_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class SearchTerm < ActiveRecord::Base
  belongs_to :list
  has_many :users, :through => :users_search_terms
  has_many :search_term_urls
  has_many :urls, :through => :search_term_urls
  
  validates_uniqueness_of :name
end
