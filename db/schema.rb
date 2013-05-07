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

ActiveRecord::Schema.define(:version => 20130506200813) do

  create_table "offers", :force => true do |t|
    t.integer "user_id"
    t.integer "skill_id"
    t.integer "other_user_id"
    t.integer "other_skill_id"
    t.boolean "accepted",       :default => false
  end

  create_table "skills", :force => true do |t|
    t.text   "task"
    t.string "user_id"
  end

  create_table "users", :force => true do |t|
    t.string "username"
    t.string "email"
    t.text   "bio"
  end

end
