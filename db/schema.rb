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

ActiveRecord::Schema.define(version: 20160823235500) do

  create_table "exercises", force: :cascade do |t|
    t.integer  "workout_session_id"
    t.string   "exercise_name"
    t.integer  "sets"
    t.integer  "reps"
    t.integer  "exercise_time"
    t.integer  "weight"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "exercises", ["workout_session_id"], name: "index_exercises_on_workout_session_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "workout_sessions", force: :cascade do |t|
    t.string   "workout_focus"
    t.text     "workout_notes"
    t.integer  "workout_time"
    t.integer  "workout_intensity"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "completed_date"
    t.string   "workout_type"
    t.integer  "hour"
    t.integer  "minute"
  end

end
