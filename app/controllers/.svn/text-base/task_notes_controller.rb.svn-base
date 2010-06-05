class TaskNotesController < ApplicationController
  # GET /task_notes
  # GET /task_notes.xml
  def index
    @task_notes = TaskNote.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_notes }
    end
  end

  # GET /task_notes/1
  # GET /task_notes/1.xml
  def show
    @task_note = TaskNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_note }
    end
  end

  # GET /task_notes/new
  # GET /task_notes/new.xml
  def new
    @task_note = TaskNote.new
    @task_note.task_id = params[:task_id]
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_note }
    end
  end

  # GET /task_notes/1/edit
  def edit
    @task_note = TaskNote.find(params[:id])
  end

  # POST /task_notes
  # POST /task_notes.xml
  def create
    @task_note = TaskNote.new(params[:task_note])

    respond_to do |format|
      if @task_note.save
        flash[:notice] = 'TaskNote was successfully created.'
        format.html { redirect_to(@task_note) }
        format.xml  { render :xml => @task_note, :status => :created, :location => @task_note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_notes/1
  # PUT /task_notes/1.xml
  def update
    @task_note = TaskNote.find(params[:id])

    respond_to do |format|
      if @task_note.update_attributes(params[:task_note])
        flash[:notice] = 'TaskNote was successfully updated.'
        format.html { redirect_to(@task_note) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_notes/1
  # DELETE /task_notes/1.xml
  def destroy
    @task_note = TaskNote.find(params[:id])
    @task_note.destroy

    respond_to do |format|
      format.html { redirect_to(task_notes_url) }
      format.xml  { head :ok }
    end
  end
end
