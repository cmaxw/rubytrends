# == Schema Information
# Schema version: 20090929041850
#
# Table name: lists
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  url_source_id :integer(4)
#  created_at    :datetime
#  updated_at    :datetime
#

class List < ActiveRecord::Base
  belongs_to :url_source
end
