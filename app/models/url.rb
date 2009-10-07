# == Schema Information
# Schema version: 20090929041850
#
# Table name: urls
#
#  id                :integer(4)      not null, primary key
#  url               :string(255)
#  url_source_id     :integer(4)
#  source_identifier :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  title             :string(255)
#  search_term_id    :integer(4)
#

class Url < ActiveRecord::Base
  belongs_to :url_source
  has_many :search_term_urls
  has_many :search_terms, :through => :search_term_urls
end
