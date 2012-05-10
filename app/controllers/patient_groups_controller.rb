class PatientGroupsController < ApplicationController
  # GET /patient_groups
  # GET /patient_groups.json
  def index
    @patient_groups = PatientGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_groups }
    end
  end

  # GET /patient_groups/1
  # GET /patient_groups/1.json
  def show
    @patient_group = PatientGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_group }
    end
  end

  # GET /patient_groups/new
  # GET /patient_groups/new.json
  def new
    @patient_group = PatientGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_group }
    end
  end

  # GET /patient_groups/1/edit
  def edit
    @patient_group = PatientGroup.find(params[:id])
  end

  # POST /patient_groups
  # POST /patient_groups.json
  def create
    @patient_group = PatientGroup.new(params[:patient_group])

    respond_to do |format|
      if @patient_group.save
        format.html { redirect_to @patient_group, notice: 'Patient group was successfully created.' }
        format.json { render json: @patient_group, status: :created, location: @patient_group }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_groups/1
  # PUT /patient_groups/1.json
  def update
    @patient_group = PatientGroup.find(params[:id])

    respond_to do |format|
      if @patient_group.update_attributes(params[:patient_group])
        format.html { redirect_to @patient_group, notice: 'Patient group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_groups/1
  # DELETE /patient_groups/1.json
  def destroy
    @patient_group = PatientGroup.find(params[:id])
    @patient_group.destroy

    respond_to do |format|
      format.html { redirect_to patient_groups_url }
      format.json { head :ok }
    end
  end
end
