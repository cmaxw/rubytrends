require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/items/edit.html.erb" do
  include ItemsHelper
  
  before(:each) do
    assigns[:item] = @item = stub_model(Item,
      :new_record? => false,
      :name => "value for name",
      :task => 
    )
  end

  it "renders the edit item form" do
    render
    
    response.should have_tag("form[action=#{item_path(@item)}][method=post]") do
      with_tag('input#item_name[name=?]', "item[name]")
      with_tag('input#item_task[name=?]', "item[task]")
    end
  end
end


