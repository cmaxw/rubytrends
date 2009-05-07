require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/edit.html.erb" do
  include TasksHelper
  
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :new_record? => false,
      :name => "value for name",
      :milestone => 
    )
  end

  it "renders the edit task form" do
    render
    
    response.should have_tag("form[action=#{task_path(@task)}][method=post]") do
      with_tag('input#task_name[name=?]', "task[name]")
      with_tag('input#task_milestone[name=?]', "task[milestone]")
    end
  end
end


