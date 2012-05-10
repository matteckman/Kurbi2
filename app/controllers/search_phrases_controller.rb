class SearchPhrasesController < ApplicationController
  # GET /search_phrases
  # GET /search_phrases.json
  def index
    @search_phrases = SearchPhrase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_phrases }
    end
  end

  # GET /search_phrases/1
  # GET /search_phrases/1.json
  def show
    @search_phrase = SearchPhrase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_phrase }
    end
  end

  # GET /search_phrases/new
  # GET /search_phrases/new.json
  def new
    @search_phrase = SearchPhrase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_phrase }
    end
  end

  # GET /search_phrases/1/edit
  def edit
    @search_phrase = SearchPhrase.find(params[:id])
  end

  # POST /search_phrases
  # POST /search_phrases.json
  def create
    @search_phrase = SearchPhrase.new(params[:search_phrase])

    respond_to do |format|
      if @search_phrase.save
        format.html { redirect_to @search_phrase, notice: 'Search phrase was successfully created.' }
        format.json { render json: @search_phrase, status: :created, location: @search_phrase }
      else
        format.html { render action: "new" }
        format.json { render json: @search_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_phrases/1
  # PUT /search_phrases/1.json
  def update
    @search_phrase = SearchPhrase.find(params[:id])

    respond_to do |format|
      if @search_phrase.update_attributes(params[:search_phrase])
        format.html { redirect_to @search_phrase, notice: 'Search phrase was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_phrases/1
  # DELETE /search_phrases/1.json
  def destroy
    @search_phrase = SearchPhrase.find(params[:id])
    @search_phrase.destroy

    respond_to do |format|
      format.html { redirect_to search_phrases_url }
      format.json { head :ok }
    end
  end
end
