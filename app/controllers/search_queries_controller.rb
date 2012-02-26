class SearchQueriesController < ApplicationController
  # GET /search_queries
  # GET /search_queries.json
  def index
    @search_queries = SearchQuery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_queries }
    end
  end

  # GET /search_queries/1
  # GET /search_queries/1.json
  def show
    @search_query = SearchQuery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_query }
    end
  end

  # GET /search_queries/new
  # GET /search_queries/new.json
  def new
    @search_query = SearchQuery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_query }
    end
  end

  # GET /search_queries/1/edit
  def edit
    @search_query = SearchQuery.find(params[:id])
  end

  # POST /search_queries
  # POST /search_queries.json
  def create
    @search_query = SearchQuery.new(params[:search_query])

    respond_to do |format|
      if @search_query.save
        format.html { redirect_to @search_query, notice: 'Search query was successfully created.' }
        format.json { render json: @search_query, status: :created, location: @search_query }
      else
        format.html { render action: "new" }
        format.json { render json: @search_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_queries/1
  # PUT /search_queries/1.json
  def update
    @search_query = SearchQuery.find(params[:id])

    respond_to do |format|
      if @search_query.update_attributes(params[:search_query])
        format.html { redirect_to @search_query, notice: 'Search query was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_queries/1
  # DELETE /search_queries/1.json
  def destroy
    @search_query = SearchQuery.find(params[:id])
    @search_query.destroy

    respond_to do |format|
      format.html { redirect_to search_queries_url }
      format.json { head :no_content }
    end
  end
end
