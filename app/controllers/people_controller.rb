class PeopleController < ApplicationController
 before_filter :authorize
 
  # GET /people
  # GET /people.json
  def index
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  # GET /people/new.json
  
  def new
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])
    @patient = current_patient

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to @patient, notice: 'Your profile information has been updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
  end
end
