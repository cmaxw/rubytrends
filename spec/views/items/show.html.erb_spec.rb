require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/items/show.html.erb" do
  include ItemsHelper
  before(:each) do
    assigns[:item] = @item = stub_model(Item,
      :name => "value for name",
      :task => 
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(//)
  end
end

