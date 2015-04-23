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

ActiveRecord::Schema.define(version: 20150423184602) do

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"

  create_table "relationships", force: :cascade do |t|
    t.integer  "investor_id"
    t.integer  "investment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stakes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tour_id"
    t.integer  "amount_of_shares"
    t.float    "mark_up"
    t.text     "description"
    t.integer  "tournament_id"
    t.integer  "tournament_id_2"
    t.integer  "tournament_id_3"
    t.integer  "tournament_id_4"
    t.integer  "tournament_id_5"
    t.integer  "tournament_id_6"
    t.integer  "tournament_id_7"
    t.integer  "tournament_id_8"
    t.integer  "tournament_id_9"
    t.integer  "tournament_id_10"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "event"
    t.string   "location"
    t.time     "start_time"
    t.date     "start_date"
    t.string   "structure"
    t.integer  "buy_in"
    t.string   "guarantee"
    t.string   "event_length"
    t.integer  "tour_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
    t.string   "image_url"
    t.string   "screen_name"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
