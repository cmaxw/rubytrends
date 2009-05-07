require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MilestonesController do

  def mock_milestone(stubs={})
    @mock_milestone ||= mock_model(Milestone, stubs)
  end
  
  describe "GET index" do
    it "assigns all milestones as @milestones" do
      Milestone.stub!(:find).with(:all).and_return([mock_milestone])
      get :index
      assigns[:milestones].should == [mock_milestone]
    end
  end

  describe "GET show" do
    it "assigns the requested milestone as @milestone" do
      Milestone.stub!(:find).with("37").and_return(mock_milestone)
      get :show, :id => "37"
      assigns[:milestone].should equal(mock_milestone)
    end
  end

  describe "GET new" do
    it "assigns a new milestone as @milestone" do
      Milestone.stub!(:new).and_return(mock_milestone)
      get :new
      assigns[:milestone].should equal(mock_milestone)
    end
  end

  describe "GET edit" do
    it "assigns the requested milestone as @milestone" do
      Milestone.stub!(:find).with("37").and_return(mock_milestone)
      get :edit, :id => "37"
      assigns[:milestone].should equal(mock_milestone)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created milestone as @milestone" do
        Milestone.stub!(:new).with({'these' => 'params'}).and_return(mock_milestone(:save => true))
        post :create, :milestone => {:these => 'params'}
        assigns[:milestone].should equal(mock_milestone)
      end

      it "redirects to the created milestone" do
        Milestone.stub!(:new).and_return(mock_milestone(:save => true))
        post :create, :milestone => {}
        response.should redirect_to(milestone_url(mock_milestone))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved milestone as @milestone" do
        Milestone.stub!(:new).with({'these' => 'params'}).and_return(mock_milestone(:save => false))
        post :create, :milestone => {:these => 'params'}
        assigns[:milestone].should equal(mock_milestone)
      end

      it "re-renders the 'new' template" do
        Milestone.stub!(:new).and_return(mock_milestone(:save => false))
        post :create, :milestone => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested milestone" do
        Milestone.should_receive(:find).with("37").and_return(mock_milestone)
        mock_milestone.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :milestone => {:these => 'params'}
      end

      it "assigns the requested milestone as @milestone" do
        Milestone.stub!(:find).and_return(mock_milestone(:update_attributes => true))
        put :update, :id => "1"
        assigns[:milestone].should equal(mock_milestone)
      end

      it "redirects to the milestone" do
        Milestone.stub!(:find).and_return(mock_milestone(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(milestone_url(mock_milestone))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested milestone" do
        Milestone.should_receive(:find).with("37").and_return(mock_milestone)
        mock_milestone.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :milestone => {:these => 'params'}
      end

      it "assigns the milestone as @milestone" do
        Milestone.stub!(:find).and_return(mock_milestone(:update_attributes => false))
        put :update, :id => "1"
        assigns[:milestone].should equal(mock_milestone)
      end

      it "re-renders the 'edit' template" do
        Milestone.stub!(:find).and_return(mock_milestone(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested milestone" do
      Milestone.should_receive(:find).with("37").and_return(mock_milestone)
      mock_milestone.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the milestones list" do
      Milestone.stub!(:find).and_return(mock_milestone(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(milestones_url)
    end
  end

end
