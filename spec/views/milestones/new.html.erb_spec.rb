require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/milestones/new.html.erb" do
  include MilestonesHelper
  
  before(:each) do
    assigns[:milestone] = stub_model(Milestone,
      :new_record? => true,
      :name => "value for name",
      :project => ,
      :percentage => 9.99
    )
  end

  it "renders new milestone form" do
    render
    
    response.should have_tag("form[action=?][method=post]", milestones_path) do
      with_tag("input#milestone_name[name=?]", "milestone[name]")
      with_tag("input#milestone_project[name=?]", "milestone[project]")
      with_tag("input#milestone_percentage[name=?]", "milestone[percentage]")
    end
  end
end


