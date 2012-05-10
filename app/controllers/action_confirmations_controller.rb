class ActionConfirmationsController < ApplicationController
  # GET /action_confirmations
  # GET /action_confirmations.json
  def index
    @action_confirmations = ActionConfirmation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @action_confirmations }
    end
  end

  # GET /action_confirmations/1
  # GET /action_confirmations/1.json
  def show
    @action_confirmation = ActionConfirmation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @action_confirmation }
    end
  end

  # GET /action_confirmations/new
  # GET /action_confirmations/new.json
  def new
    @action_confirmation = ActionConfirmation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @action_confirmation }
    end
  end

  # GET /action_confirmations/1/edit
  def edit
    @action_confirmation = ActionConfirmation.find(params[:id])
  end

  # POST /action_confirmations
  # POST /action_confirmations.json
  def create
    @action_confirmation = ActionConfirmation.new(params[:action_confirmation])

    respond_to do |format|
      if @action_confirmation.save
        format.html { redirect_to @action_confirmation, notice: 'Action confirmation was successfully created.' }
        format.json { render json: @action_confirmation, status: :created, location: @action_confirmation }
      else
        format.html { render action: "new" }
        format.json { render json: @action_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /action_confirmations/1
  # PUT /action_confirmations/1.json
  def update
    @action_confirmation = ActionConfirmation.find(params[:id])

    respond_to do |format|
      if @action_confirmation.update_attributes(params[:action_confirmation])
        format.html { redirect_to @action_confirmation, notice: 'Action confirmation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @action_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_confirmations/1
  # DELETE /action_confirmations/1.json
  def destroy
    @action_confirmation = ActionConfirmation.find(params[:id])
    @action_confirmation.destroy

    respond_to do |format|
      format.html { redirect_to action_confirmations_url }
      format.json { head :ok }
    end
  end
end
