class TasksController < ApplicationController
<<<<<<< HEAD:app/controllers/tasks_controller.rb
  def load_milestones
    @milestones ||= Milestone.all_to_select
  end
  
=======
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/controllers/tasks_controller.rb
  # GET /tasks
  # GET /tasks.xml
  def index
    @tasks = Task.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    @task = Task.find(params[:id])
<<<<<<< HEAD:app/controllers/tasks_controller.rb
=======

>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/controllers/tasks_controller.rb
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @task = Task.new
<<<<<<< HEAD:app/controllers/tasks_controller.rb
    load_milestones
=======
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/controllers/tasks_controller.rb

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
<<<<<<< HEAD:app/controllers/tasks_controller.rb
    load_milestones
=======
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/controllers/tasks_controller.rb
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        flash[:notice] = 'Task was successfully created.'
        format.html { redirect_to(@task) }
        format.xml  { render :xml => @task, :status => :created, :location => @task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.xml
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        flash[:notice] = 'Task was successfully updated.'
        format.html { redirect_to(@task) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.xml
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to(tasks_url) }
      format.xml  { head :ok }
    end
  end
end
