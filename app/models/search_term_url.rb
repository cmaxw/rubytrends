# == Schema Information
# Schema version: 20090929041850
#
# Table name: search_term_urls
#
#  id             :integer(4)      not null, primary key
#  search_term_id :integer(4)
#  url_id         :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class SearchTermUrl < ActiveRecord::Base
  belongs_to :search_term
  belongs_to :url

  validates_uniqueness_of :url_id, :scope => :search_term_id
end
