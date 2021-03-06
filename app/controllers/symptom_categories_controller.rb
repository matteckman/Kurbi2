class SymptomCategoriesController < ApplicationController
  # GET /symptom_categories
  # GET /symptom_categories.json
  def index
    @symptom_categories = SymptomCategory.all
	@title = "Symptom Categories"
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @symptom_categories }
    end
  end

  # GET /symptom_categories/1
  # GET /symptom_categories/1.json
  def show
    @symptom_category = SymptomCategory.find(params[:id])
    @title = @symptom_category.name

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @symptom_category }
    end
  end

  # GET /symptom_categories/new
  # GET /symptom_categories/new.json
  def new
    @symptom_category = SymptomCategory.new
    @title = "New Symptom Category"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @symptom_category }
    end
  end

  # GET /symptom_categories/1/edit
  def edit
    @symptom_category = SymptomCategory.find(params[:id])
    @title = "Edit Symptom Category"
  end

  # POST /symptom_categories
  # POST /symptom_categories.json
  def create
    @symptom_category = SymptomCategory.new(params[:symptom_category])

    respond_to do |format|
      if @symptom_category.save
        format.html { redirect_to @symptom_category, notice: 'Symptom category was successfully created.' }
        format.json { render json: @symptom_category, status: :created, location: @symptom_category }
      else
        format.html { render action: "new" }
        format.json { render json: @symptom_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /symptom_categories/1
  # PUT /symptom_categories/1.json
  def update
    @symptom_category = SymptomCategory.find(params[:id])

    respond_to do |format|
      if @symptom_category.update_attributes(params[:symptom_category])
        format.html { redirect_to @symptom_category, notice: 'Symptom category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @symptom_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /symptom_categories/1
  # DELETE /symptom_categories/1.json
  def destroy
    @symptom_category = SymptomCategory.find(params[:id])
    @symptom_category.destroy

    respond_to do |format|
      format.html { redirect_to symptom_categories_url }
      format.json { head :ok }
    end
  end
end
