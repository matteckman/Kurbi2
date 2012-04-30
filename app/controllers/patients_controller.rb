class PatientsController < ApplicationController
  before_filter :authorize, :only => [:show, :edit, :update, :profile]
  
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
    
    respond_to do |format|
	    if @patient.save
     	   sign_in @patient
           format.html { redirect_to profile_path(@patient), notice: 'Welcome to Kurbi! Please complete your registration by filling out your profile information.' }
           format.json { render json: @patient, status: :created, location: @patient }	
           PatientMailer.registration_confirmation(@patient).deliver
    	else
          @title = "Sign up"
          format.html { render action: "new" }
          format.json { render json: @patient.errors, status: :unprocessable_entity }
        end 
    end   
  end

  # PUT /patients/1
  # PUT /patients/1.json
  def update
    @patient = Patient.find(params[:id])
    
    respond_to do |format|
		if @patient.update_attributes(params[:patient])
			format.html { redirect_to @patient, notice: 'Your account settings have been updated.' }
			format.json { head :ok }
		else
			@title = "Edit Account Settings"
			format.html { render action: "edit" }
			format.json { render json: @patient.errors, status: :unprocessable_entity }
			render "edit"
		end
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
  
  def profile
  	@title = "Edit Profile"
  	render 'edit_profile'
  end
  
  def careteam
  	@title = "My Care Team"
  	render 'care_team'
  end
end

