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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20120302192414) do
=======
ActiveRecord::Schema.define(:version => 20120306001817) do
>>>>>>> 25ce876606dd747660e6c292228e4c94cd17ec43
=======
ActiveRecord::Schema.define(:version => 20120307170135) do
>>>>>>> 8296a4730efe1181e08f6270537ad5adf2e8e5c3

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
    t.string   "state_province"
    t.string   "zip_postal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_records", :force => true do |t|
    t.date     "date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", :force => true do |t|
    t.date     "date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disease_profiles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "name"
    t.text     "full_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_symptom_searches", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
<<<<<<< HEAD
    t.string   "password_hash"
    t.string   "password_salt"
=======
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
>>>>>>> 25ce876606dd747660e6c292228e4c94cd17ec43
  end

  add_index "patients", ["email"], :name => "index_patients_on_email", :unique => true

  create_table "people", :force => true do |t|
    t.string   "social_security"
    t.date     "birthday"
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "race"
    t.string   "sex"
    t.text     "bio"
    t.string   "first_occurrence"
    t.string   "year_diagnosed"
    t.string   "condition"
    t.string   "doctor"
    t.text     "medications"
    t.integer  "patient_id"
  end

  add_index "people", ["user_name"], :name => "index_people_on_user_name", :unique => true

  create_table "predefined_symptoms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_queries", :force => true do |t|
    t.string   "search_query"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "severities", :force => true do |t|
    t.integer  "rank"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptom_categories", :force => true do |t|
    t.string   "category"
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
