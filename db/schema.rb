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

ActiveRecord::Schema.define(:version => 20131024191048) do

  create_table "attendences", :force => true do |t|
    t.integer  "user_id"
    t.integer  "vehicle_id"
    t.integer  "pick_up_point_id"
    t.string   "employee_id"
    t.string   "status"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "passengers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "vehicle_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pick_up_points", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.text     "address"
    t.string   "contact_no"
    t.string   "blood_group"
    t.string   "emergency_contact_no"
    t.string   "family_doctor_name"
    t.string   "ref_number_1"
    t.string   "ref_number_2"
    t.string   "profile_title"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "full_name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vehicles", :force => true do |t|
    t.string   "vehicle_make"
    t.string   "vehicle_number"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
