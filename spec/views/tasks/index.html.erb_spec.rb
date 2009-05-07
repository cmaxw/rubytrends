require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/index.html.erb" do
  include TasksHelper
  
  before(:each) do
    assigns[:tasks] = [
      stub_model(Task,
        :name => "value for name",
        :milestone => 
      ),
      stub_model(Task,
        :name => "value for name",
        :milestone => 
      )
    ]
  end

  it "renders a list of tasks" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
  end
end

