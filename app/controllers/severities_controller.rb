class SeveritiesController < ApplicationController
  # GET /severities
  # GET /severities.json
  def index
    @severities = Severity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @severities }
    end
  end

  # GET /severities/1
  # GET /severities/1.json
  def show
    @severity = Severity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @severity }
    end
  end

  # GET /severities/new
  # GET /severities/new.json
  def new
    @severity = Severity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @severity }
    end
  end

  # GET /severities/1/edit
  def edit
    @severity = Severity.find(params[:id])
  end

  # POST /severities
  # POST /severities.json
  def create
    @severity = Severity.new(params[:severity])

    respond_to do |format|
      if @severity.save
        format.html { redirect_to @severity, notice: 'Severity was successfully created.' }
        format.json { render json: @severity, status: :created, location: @severity }
      else
        format.html { render action: "new" }
        format.json { render json: @severity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /severities/1
  # PUT /severities/1.json
  def update
    @severity = Severity.find(params[:id])

    respond_to do |format|
      if @severity.update_attributes(params[:severity])
        format.html { redirect_to @severity, notice: 'Severity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @severity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /severities/1
  # DELETE /severities/1.json
  def destroy
    @severity = Severity.find(params[:id])
    @severity.destroy

    respond_to do |format|
      format.html { redirect_to severities_url }
      format.json { head :no_content }
    end
  end
end
