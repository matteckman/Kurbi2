class PatientSymptomSearchesController < ApplicationController
  # GET /patient_symptom_searches
  # GET /patient_symptom_searches.json
  def index
    @patient_symptom_searches = PatientSymptomSearch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_symptom_searches }
    end
  end

  # GET /patient_symptom_searches/1
  # GET /patient_symptom_searches/1.json
  def show
    @patient_symptom_search = PatientSymptomSearch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_symptom_search }
    end
  end

  # GET /patient_symptom_searches/new
  # GET /patient_symptom_searches/new.json
  def new
    @patient_symptom_search = PatientSymptomSearch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_symptom_search }
    end
  end

  # GET /patient_symptom_searches/1/edit
  def edit
    @patient_symptom_search = PatientSymptomSearch.find(params[:id])
  end

  # POST /patient_symptom_searches
  # POST /patient_symptom_searches.json
  def create
    @patient_symptom_search = PatientSymptomSearch.new(params[:patient_symptom_search])

    respond_to do |format|
      if @patient_symptom_search.save
        format.html { redirect_to @patient_symptom_search, notice: 'Patient symptom search was successfully created.' }
        format.json { render json: @patient_symptom_search, status: :created, location: @patient_symptom_search }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_symptom_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_symptom_searches/1
  # PUT /patient_symptom_searches/1.json
  def update
    @patient_symptom_search = PatientSymptomSearch.find(params[:id])

    respond_to do |format|
      if @patient_symptom_search.update_attributes(params[:patient_symptom_search])
        format.html { redirect_to @patient_symptom_search, notice: 'Patient symptom search was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_symptom_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_symptom_searches/1
  # DELETE /patient_symptom_searches/1.json
  def destroy
    @patient_symptom_search = PatientSymptomSearch.find(params[:id])
    @patient_symptom_search.destroy

    respond_to do |format|
      format.html { redirect_to patient_symptom_searches_url }
      format.json { head :no_content }
    end
  end
end
