class DiseaseProfilesController < ApplicationController
  # GET /disease_profiles
  # GET /disease_profiles.json
  def index
    @disease_profiles = DiseaseProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disease_profiles }
    end
  end

  # GET /disease_profiles/1
  # GET /disease_profiles/1.json
  def show
    @disease_profile = DiseaseProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disease_profile }
    end
  end

  # GET /disease_profiles/new
  # GET /disease_profiles/new.json
  def new
    @disease_profile = DiseaseProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disease_profile }
    end
  end

  # GET /disease_profiles/1/edit
  def edit
    @disease_profile = DiseaseProfile.find(params[:id])
  end

  # POST /disease_profiles
  # POST /disease_profiles.json
  def create
    @disease_profile = DiseaseProfile.new(params[:disease_profile])

    respond_to do |format|
      if @disease_profile.save
        format.html { redirect_to @disease_profile, notice: 'Disease profile was successfully created.' }
        format.json { render json: @disease_profile, status: :created, location: @disease_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @disease_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disease_profiles/1
  # PUT /disease_profiles/1.json
  def update
    @disease_profile = DiseaseProfile.find(params[:id])

    respond_to do |format|
      if @disease_profile.update_attributes(params[:disease_profile])
        format.html { redirect_to @disease_profile, notice: 'Disease profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disease_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disease_profiles/1
  # DELETE /disease_profiles/1.json
  def destroy
    @disease_profile = DiseaseProfile.find(params[:id])
    @disease_profile.destroy

    respond_to do |format|
      format.html { redirect_to disease_profiles_url }
      format.json { head :no_content }
    end
  end
end
