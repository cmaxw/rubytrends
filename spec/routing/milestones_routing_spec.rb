require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MilestonesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "milestones", :action => "index").should == "/milestones"
    end
  
    it "maps #new" do
      route_for(:controller => "milestones", :action => "new").should == "/milestones/new"
    end
  
    it "maps #show" do
      route_for(:controller => "milestones", :action => "show", :id => "1").should == "/milestones/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "milestones", :action => "edit", :id => "1").should == "/milestones/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "milestones", :action => "create").should == {:path => "/milestones", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "milestones", :action => "update", :id => "1").should == {:path =>"/milestones/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "milestones", :action => "destroy", :id => "1").should == {:path =>"/milestones/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/milestones").should == {:controller => "milestones", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/milestones/new").should == {:controller => "milestones", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/milestones").should == {:controller => "milestones", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/milestones/1").should == {:controller => "milestones", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/milestones/1/edit").should == {:controller => "milestones", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/milestones/1").should == {:controller => "milestones", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/milestones/1").should == {:controller => "milestones", :action => "destroy", :id => "1"}
    end
  end
end
