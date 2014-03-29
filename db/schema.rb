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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140329084105) do

  create_table "events", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "student_id"
    t.boolean  "present"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performance_evaluations", force: true do |t|
    t.string   "teacher_firstname"
    t.string   "teacher_lastname"
    t.string   "student_firstname"
    t.string   "student_lastname"
    t.integer  "point"
    t.text     "comment"
    t.string   "lesson_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performance_feedbacks", force: true do |t|
    t.string   "teacher_firstname"
    t.string   "teacher_lastname"
    t.string   "student_firstname"
    t.string   "student_lastname"
    t.integer  "point"
    t.text     "comment"
    t.string   "lesson_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
    t.string   "password_digest"
  end

end
