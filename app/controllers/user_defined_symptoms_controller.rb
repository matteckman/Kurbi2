class UserDefinedSymptomsController < ApplicationController
  # GET /user_defined_symptoms
  # GET /user_defined_symptoms.json
  def index
    @user_defined_symptoms = UserDefinedSymptom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_defined_symptoms }
    end
  end

  # GET /user_defined_symptoms/1
  # GET /user_defined_symptoms/1.json
  def show
    @user_defined_symptom = UserDefinedSymptom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_defined_symptom }
    end
  end

  # GET /user_defined_symptoms/new
  # GET /user_defined_symptoms/new.json
  def new
    @user_defined_symptom = UserDefinedSymptom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_defined_symptom }
    end
  end

  # GET /user_defined_symptoms/1/edit
  def edit
    @user_defined_symptom = UserDefinedSymptom.find(params[:id])
  end

  # POST /user_defined_symptoms
  # POST /user_defined_symptoms.json
  def create
    @user_defined_symptom = UserDefinedSymptom.new(params[:user_defined_symptom])

    respond_to do |format|
      if @user_defined_symptom.save
        format.html { redirect_to @user_defined_symptom, notice: 'User defined symptom was successfully created.' }
        format.json { render json: @user_defined_symptom, status: :created, location: @user_defined_symptom }
      else
        format.html { render action: "new" }
        format.json { render json: @user_defined_symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_defined_symptoms/1
  # PUT /user_defined_symptoms/1.json
  def update
    @user_defined_symptom = UserDefinedSymptom.find(params[:id])

    respond_to do |format|
      if @user_defined_symptom.update_attributes(params[:user_defined_symptom])
        format.html { redirect_to @user_defined_symptom, notice: 'User defined symptom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_defined_symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_defined_symptoms/1
  # DELETE /user_defined_symptoms/1.json
  def destroy
    @user_defined_symptom = UserDefinedSymptom.find(params[:id])
    @user_defined_symptom.destroy

    respond_to do |format|
      format.html { redirect_to user_defined_symptoms_url }
      format.json { head :no_content }
    end
  end
end
