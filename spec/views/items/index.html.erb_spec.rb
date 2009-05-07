require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/items/index.html.erb" do
  include ItemsHelper
  
  before(:each) do
    assigns[:items] = [
      stub_model(Item,
        :name => "value for name",
        :task => 
      ),
      stub_model(Item,
        :name => "value for name",
        :task => 
      )
    ]
  end

  it "renders a list of items" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
  end
end

