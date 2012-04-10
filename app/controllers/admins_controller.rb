class AdminsController < ApplicationController
  def index
    @users = Patient.all
    @categories = SymptomCategory.all
    @symptoms = PredefinedSymptom.all
    @dailyrecords = DailyRecord.all
  end

end
