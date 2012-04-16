class PredefinedSymptomsController < ApplicationController
  # GET /predefined_symptoms
  # GET /predefined_symptoms.json
  def index
    @predefined_symptoms = PredefinedSymptom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @predefined_symptoms }
    end
  end

  # GET /predefined_symptoms/1
  # GET /predefined_symptoms/1.json
  def show
    @predefined_symptom = PredefinedSymptom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @predefined_symptom }
    end
  end

  # GET /predefined_symptoms/new
  # GET /predefined_symptoms/new.json
  def new
    @predefined_symptom = PredefinedSymptom.new
    #@category = params('id')
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @predefined_symptom }
    end
  end

  # GET /predefined_symptoms/1/edit
  def edit
    @predefined_symptom = PredefinedSymptom.find(params[:id])
  end

  # POST /predefined_symptoms
  # POST /predefined_symptoms.json
  def create
    @predefined_symptom = PredefinedSymptom.new(params[:predefined_symptom])

    respond_to do |format|
      if @predefined_symptom.save
        format.html { redirect_to @predefined_symptom, notice: 'Predefined symptom was successfully created.' }
        format.json { render json: @predefined_symptom, status: :created, location: @predefined_symptom }
      else
        format.html { render action: "new" }
        format.json { render json: @predefined_symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /predefined_symptoms/1
  # PUT /predefined_symptoms/1.json
  def update
    @predefined_symptom = PredefinedSymptom.find(params[:id])

    respond_to do |format|
      if @predefined_symptom.update_attributes(params[:predefined_symptom])
        format.html { redirect_to @predefined_symptom, notice: 'Predefined symptom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @predefined_symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predefined_symptoms/1
  # DELETE /predefined_symptoms/1.json
  def destroy
    @predefined_symptom = PredefinedSymptom.find(params[:id])
    @predefined_symptom.destroy

    respond_to do |format|
      format.html { redirect_to predefined_symptoms_url }
      format.json { head :no_content }
    end
  end
end
