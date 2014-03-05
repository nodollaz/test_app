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

ActiveRecord::Schema.define(:version => 20140226005355) do

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer "user_id"
    t.string  "gender"
    t.string  "location"
    t.string  "first_name"
    t.string  "last_name"
  end

  create_table "rooms", :force => true do |t|
    t.integer "room_number"
    t.string  "teacher_name"
  end

  create_table "user_rooms", :force => true do |t|
    t.integer "user_id"
    t.integer "room_id"
  end

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.datetime "birthday"
    t.integer  "age"
    t.string   "gender"
    t.string   "location"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
  end

end