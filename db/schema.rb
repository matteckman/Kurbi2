# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120510013402) do

  create_table "action_confirmations", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "line3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_record_details", :force => true do |t|
    t.integer  "severity"
    t.integer  "symptom_id"
    t.integer  "daily_record_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_records", :force => true do |t|
    t.integer  "wellness_score"
    t.text     "note"
    t.integer  "day_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", :force => true do |t|
    t.date     "date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ip_addresses", :force => true do |t|
    t.string   "ip"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "name"
    t.text     "full_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.integer  "message_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_addresses", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_patient_groups", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "patient_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "social_security"
    t.date     "birthday"
    t.string   "location"
    t.string   "race"
    t.string   "sex"
    t.text     "bio"
    t.string   "first_occurrence"
    t.string   "year_diagnosed"
    t.string   "condition"
    t.string   "primary_physician"
    t.string   "medications"
    t.text     "other_medications"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patients", ["email"], :name => "index_patients_on_email", :unique => true
  add_index "patients", ["social_security"], :name => "index_patients_on_social_security", :unique => true
  add_index "patients", ["username"], :name => "index_patients_on_username", :unique => true

  create_table "search_phrases", :force => true do |t|
    t.text     "phrase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_search_phrases", :force => true do |t|
    t.integer  "search_id"
    t.integer  "search_phrase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "search_phrase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_symptoms", :force => true do |t|
    t.integer  "survey_id"
    t.integer  "symptom_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", :force => true do |t|
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surveys", ["patient_id"], :name => "index_surveys_on_patient_id"

  create_table "symptom_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptoms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "symptom_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_errors", :force => true do |t|
    t.string   "error"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_defined_symptoms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
