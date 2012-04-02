class DailyRecordDetailsController < ApplicationController
  # GET /daily_record_details
  # GET /daily_record_details.json
  def index
    @daily_record_details = DailyRecordDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_record_details }
    end
  end

  # GET /daily_record_details/1
  # GET /daily_record_details/1.json
  def show
    @daily_record_detail = DailyRecordDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_record_detail }
    end
  end

  # GET /daily_record_details/new
  # GET /daily_record_details/new.json
  def new
    @daily_record_detail = DailyRecordDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_record_detail }
    end
  end

  # GET /daily_record_details/1/edit
  def edit
    @daily_record_detail = DailyRecordDetail.find(params[:id])
  end

  # POST /daily_record_details
  # POST /daily_record_details.json
  def create
    @daily_record_detail = DailyRecordDetail.new(params[:daily_record_detail])

    respond_to do |format|
      if @daily_record_detail.save
        format.html { redirect_to @daily_record_detail, notice: 'Daily record detail was successfully created.' }
        format.json { render json: @daily_record_detail, status: :created, location: @daily_record_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_record_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_record_details/1
  # PUT /daily_record_details/1.json
  def update
    @daily_record_detail = DailyRecordDetail.find(params[:id])

    respond_to do |format|
      if @daily_record_detail.update_attributes(params[:daily_record_detail])
        format.html { redirect_to @daily_record_detail, notice: 'Daily record detail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_record_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_record_details/1
  # DELETE /daily_record_details/1.json
  def destroy
    @daily_record_detail = DailyRecordDetail.find(params[:id])
    @daily_record_detail.destroy

    respond_to do |format|
      format.html { redirect_to daily_record_details_url }
      format.json { head :ok }
    end
  end
end
