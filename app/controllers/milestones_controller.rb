class MilestonesController < ApplicationController
  def load_projects
    @projects ||= Project.all_to_select
  end
  # GET /milestones
  # GET /milestones.xml
  def index
    @milestones = Milestone.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @milestones }
    end
  end

  # GET /milestones/1
  # GET /milestones/1.xml
  def show
    @milestone = Milestone.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @milestone }
    end
  end

  # GET /milestones/new
  # GET /milestones/new.xml
  def new
    @milestone = Milestone.new
    load_projects
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @milestone }
    end
  end

  # GET /milestones/1/edit
  def edit
    @milestone = Milestone.find(params[:id])
<<<<<<< HEAD:app/controllers/milestones_controller.rb
    load_projects
=======
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/controllers/milestones_controller.rb
  end

  # POST /milestones
  # POST /milestones.xml
  def create
    @milestone = Milestone.new(params[:milestone])

    respond_to do |format|
      if @milestone.save
        flash[:notice] = 'Milestone was successfully created.'
        format.html { redirect_to(@milestone) }
        format.xml  { render :xml => @milestone, :status => :created, :location => @milestone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @milestone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /milestones/1
  # PUT /milestones/1.xml
  def update
    @milestone = Milestone.find(params[:id])

    respond_to do |format|
      if @milestone.update_attributes(params[:milestone])
        flash[:notice] = 'Milestone was successfully updated.'
        format.html { redirect_to(@milestone) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @milestone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /milestones/1
  # DELETE /milestones/1.xml
  def destroy
    @milestone = Milestone.find(params[:id])
    @milestone.destroy

    respond_to do |format|
      format.html { redirect_to(milestones_url) }
      format.xml  { head :ok }
    end
  end
end
