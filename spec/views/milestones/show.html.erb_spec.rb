require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/milestones/show.html.erb" do
  include MilestonesHelper
  before(:each) do
    assigns[:milestone] = @milestone = stub_model(Milestone,
      :name => "value for name",
      :project => ,
      :percentage => 9.99
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(//)
    response.should have_text(/9\.99/)
  end
end

