require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/milestones/index.html.erb" do
  include MilestonesHelper
  
  before(:each) do
    assigns[:milestones] = [
      stub_model(Milestone,
        :name => "value for name",
        :project => ,
        :percentage => 9.99
      ),
      stub_model(Milestone,
        :name => "value for name",
        :project => ,
        :percentage => 9.99
      )
    ]
  end

  it "renders a list of milestones" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
  end
end

