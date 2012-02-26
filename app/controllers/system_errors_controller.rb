class SystemErrorsController < ApplicationController
  # GET /system_errors
  # GET /system_errors.json
  def index
    @system_errors = SystemError.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @system_errors }
    end
  end

  # GET /system_errors/1
  # GET /system_errors/1.json
  def show
    @system_error = SystemError.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @system_error }
    end
  end

  # GET /system_errors/new
  # GET /system_errors/new.json
  def new
    @system_error = SystemError.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @system_error }
    end
  end

  # GET /system_errors/1/edit
  def edit
    @system_error = SystemError.find(params[:id])
  end

  # POST /system_errors
  # POST /system_errors.json
  def create
    @system_error = SystemError.new(params[:system_error])

    respond_to do |format|
      if @system_error.save
        format.html { redirect_to @system_error, notice: 'System error was successfully created.' }
        format.json { render json: @system_error, status: :created, location: @system_error }
      else
        format.html { render action: "new" }
        format.json { render json: @system_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /system_errors/1
  # PUT /system_errors/1.json
  def update
    @system_error = SystemError.find(params[:id])

    respond_to do |format|
      if @system_error.update_attributes(params[:system_error])
        format.html { redirect_to @system_error, notice: 'System error was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @system_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_errors/1
  # DELETE /system_errors/1.json
  def destroy
    @system_error = SystemError.find(params[:id])
    @system_error.destroy

    respond_to do |format|
      format.html { redirect_to system_errors_url }
      format.json { head :no_content }
    end
  end
end
