class PatientsController < ApplicationController
  before_filter :authorize, :only => [:show, :edit, :update]
  
  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patients }
    end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])
	@title = (@patient.first_name + " " + @patient.last_name)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/new
  # GET /patients/new.json
  def new
    @patient = Patient.new
    @title = "Sign up"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
    @title = "Edit Account Settings"
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
        session[:patient_id] = @patient.id
        redirect_to @patient, notice: "Welcome to Kurbi! Thank you for signing up."
    else
        @title = "Sign up"
        render "new"
    end 
  end

  # PUT /patients/1
  # PUT /patients/1.json
  def update
    @patient = Patient.find(params[:id])
	if @patient.update_attributes(params[:patient])
		flash[:success] = "Your account settings have been updated."
		redirect_to @patient
	else
		@title = "Edit Account Settings"
		render "edit"
	end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :no_content }
    end
  end
  
 
end

