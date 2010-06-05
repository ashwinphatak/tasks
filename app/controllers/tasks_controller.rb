class TasksController < ApplicationController
  layout "tasks"
  
  # GET /tasks
  # GET /tasks.xml
  def index
    order = "tasks.req,tasks.dev,tasks.qa,tasks.prod_review,tasks.prod,tasks.hide,tasks.assigned_to,tasks.created_at,childrens_tasks.id"
    if params[:sort] == 'N'
      order = "tasks.assigned_to DESC,tasks.req,tasks.dev,tasks.qa,tasks.prod_review,tasks.prod,tasks.hide,tasks.created_at,childrens_tasks.id"
    elsif params[:sort] == 'ID'
      order = "tasks.id,tasks.req,tasks.dev,tasks.qa,tasks.prod_review,tasks.prod,tasks.hide,tasks.assigned_to,tasks.created_at,childrens_tasks.id"
    elsif params[:sort] == 'CR'
      order = "tasks.created_at DESC,tasks.assigned_to,tasks.req,tasks.dev,tasks.qa,tasks.prod_review,tasks.prod,tasks.hide,tasks.created_at,childrens_tasks.id"
    elsif params[:sort] == 'UP'
      order = "tasks.updated_at DESC,tasks.assigned_to,tasks.req,tasks.dev,tasks.qa,tasks.prod_review,tasks.prod,tasks.hide,tasks.created_at,childrens_tasks.id"
    end
    
    @tasks = Task.find(:all, :include => :children,
      :conditions => ["tasks.parent_id is null and (tasks.hide is null or tasks.hide = 0)"],
      :order => order)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @task = Task.new
    @task.parent_id = params[:parent_id]
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        flash[:notice] = 'Task was successfully created.'
        format.html { redirect_to :action => :index }
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
        format.html { redirect_to :action => :index }
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
