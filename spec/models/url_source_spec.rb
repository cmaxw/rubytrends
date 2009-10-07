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

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe UrlSource do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    UrlSource.create!(@valid_attributes)
  end
end
