require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/milestones/edit.html.erb" do
  include MilestonesHelper
  
  before(:each) do
    assigns[:milestone] = @milestone = stub_model(Milestone,
      :new_record? => false,
      :name => "value for name",
      :project => ,
      :percentage => 9.99
    )
  end

  it "renders the edit milestone form" do
    render
    
    response.should have_tag("form[action=#{milestone_path(@milestone)}][method=post]") do
      with_tag('input#milestone_name[name=?]', "milestone[name]")
      with_tag('input#milestone_project[name=?]', "milestone[project]")
      with_tag('input#milestone_percentage[name=?]', "milestone[percentage]")
    end
  end
end


