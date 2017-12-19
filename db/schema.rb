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

ActiveRecord::Schema.define(version: 20171218125555) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "comments",   limit: 255
    t.string   "prefix",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "provider_id",          limit: 4
    t.string   "title",                limit: 255
    t.string   "first_name",           limit: 255
    t.string   "middle_name",          limit: 255
    t.string   "last_name",            limit: 255
    t.string   "year_of_registration", limit: 255
    t.integer  "years_of_experience",  limit: 4
    t.string   "registration_number",  limit: 255
    t.string   "qualification",        limit: 255
    t.string   "clinic_name",          limit: 255
    t.string   "service_type",         limit: 255
    t.float    "session_rate",         limit: 24
    t.string   "rating",               limit: 255
    t.text     "external_notes",       limit: 65535
    t.string   "email",                limit: 255
    t.string   "alternate_number",     limit: 255
    t.string   "mobile",               limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "providers", force: :cascade do |t|
    t.integer  "provider_id", limit: 4
    t.string   "name",        limit: 255
    t.text     "address",     limit: 65535
    t.string   "charge_code", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "city",        limit: 255
    t.string   "zip",         limit: 255
    t.integer  "category_id", limit: 4
  end

  create_table "salutations", force: :cascade do |t|
    t.string   "salutation", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
