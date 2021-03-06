class ToDoListsController < ApplicationController


  # GET /to_do_lists
  # GET /to_do_lists.json
  def index
    @to_do_lists = ToDoList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @to_do_lists }
    end
  end

  # GET /to_do_lists/1
  # GET /to_do_lists/1.json
  def show
    @to_do_list = ToDoList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @to_do_list }
    end
  end

  # GET /to_do_lists/new
  # GET /to_do_lists/new.json
  def new
    @to_do_list = ToDoList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @to_do_list }
    end
  end

  # GET /to_do_lists/1/edit
  def edit
    @to_do_list = ToDoList.find(params[:id])
  end

  # POST /to_do_lists
  # POST /to_do_lists.json
  def create
    @to_do_list = ToDoList.new(params[:to_do_list])

    respond_to do |format|
      if @to_do_list.save
        format.html { redirect_to @to_do_list, notice: 'To do list was successfully created.' }
        format.json { render json: @to_do_list, status: :created, location: @to_do_list }
      else
        format.html { render action: "new" }
        format.json { render json: @to_do_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /to_do_lists/1
  # PUT /to_do_lists/1.json
  def update
    @to_do_list = ToDoList.find(params[:id])

    respond_to do |format|
      if @to_do_list.update_attributes(params[:to_do_list])
        format.html { redirect_to @to_do_list, notice: 'To do list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @to_do_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_do_lists/1
  # DELETE /to_do_lists/1.json
  def destroy
    @to_do_list = ToDoList.find(params[:id])
    @to_do_list.destroy

    respond_to do |format|
      format.html { redirect_to to_do_lists_url }
      format.json { head :no_content }
    end
  end
end
