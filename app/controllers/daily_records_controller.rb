class DailyRecordsController < ApplicationController
  # GET /daily_records
  # GET /daily_records.json
  def index
    @daily_records = DailyRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_records }
    end
  end

  # GET /daily_records/1
  # GET /daily_records/1.json
  def show
    @daily_record = DailyRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_record }
    end
  end

  # GET /daily_records/new
  # GET /daily_records/new.json
  def new
    @daily_record = DailyRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_record }
    end
  end

  # GET /daily_records/1/edit
  def edit
    @daily_record = DailyRecord.find(params[:id])
  end

  # POST /daily_records
  # POST /daily_records.json
  def create
    @daily_record = DailyRecord.new(params[:daily_record])

    respond_to do |format|
      if @daily_record.save
        format.html { redirect_to @daily_record, notice: 'Daily record was successfully created.' }
        format.json { render json: @daily_record, status: :created, location: @daily_record }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_records/1
  # PUT /daily_records/1.json
  def update
    @daily_record = DailyRecord.find(params[:id])

    respond_to do |format|
      if @daily_record.update_attributes(params[:daily_record])
        format.html { redirect_to @daily_record, notice: 'Daily record was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_records/1
  # DELETE /daily_records/1.json
  def destroy
    @daily_record = DailyRecord.find(params[:id])
    @daily_record.destroy

    respond_to do |format|
      format.html { redirect_to daily_records_url }
      format.json { head :ok }
    end
  end
end
