require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Milestone do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :project => ,
      :percentage => 9.99
    }
  end

  it "should create a new instance given valid attributes" do
    Milestone.create!(@valid_attributes)
  end
end
