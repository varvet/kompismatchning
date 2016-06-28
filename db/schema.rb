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

ActiveRecord::Schema.define(version: 20160615181216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_admin_users", force: :cascade do |t|
    t.string   "email"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "interest_taggings", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "interest_taggings", ["interest_id"], name: "index_interest_taggings_on_interest_id", using: :btree
  add_index "interest_taggings", ["person_id"], name: "index_interest_taggings_on_person_id", using: :btree

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "newcomer_id"
    t.integer  "established_id"
    t.text     "comment"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "gender"
    t.integer  "age"
    t.string   "email"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "engaged",    default: false
    t.integer  "status"
    t.text     "comment"
    t.string   "country"
  end

  add_foreign_key "interest_taggings", "interests"
  add_foreign_key "interest_taggings", "people"
end
