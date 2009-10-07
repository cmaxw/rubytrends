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

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Url do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Url.create!(@valid_attributes)
  end
end
