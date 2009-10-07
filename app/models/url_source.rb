# == Schema Information
# Schema version: 20090929041850
#
# Table name: url_sources
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class UrlSource < ActiveRecord::Base
  has_many :urls
end
