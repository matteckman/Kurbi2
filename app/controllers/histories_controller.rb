class HistoriesController < ApplicationController
  before_filter :authorize
  
  # GET /histories
  # GET /histories.json
  def index
  end

  # GET /histories/1
  # GET /histories/1.json
  def show
  	@patient = Patient.find(params[:id])
  	@person = @patient.person
  	@title = (@patient.first_name + " " + @patient.last_name)
  	render 'show'
  end

  # GET /histories/new
  # GET /histories/new.json
  def new
  end

  # GET /histories/1/edit
  def edit
  end

  # POST /histories
  # POST /histories.json
  def create
  end

  # PUT /histories/1
  # PUT /histories/1.json
  def update
  end

  # DELETE /histories/1
  # DELETE /histories/1.json
  def destroy
  end
end
