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

ActiveRecord::Schema.define(version: 20171109091429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name",           limit: 60, null: false
    t.integer  "account_number",            null: false
    t.text     "address"
    t.string   "phone_number"
    t.string   "mail_address",              null: false
  end

  create_table "engineers", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name",            limit: 60, null: false
    t.string   "designation",                null: false
    t.text     "address"
    t.string   "timezone"
    t.string   "skill_set"
    t.boolean  "is_collaborator"
  end

  create_table "guidelines", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "ticket_number",           null: false
    t.integer  "customer_account_number", null: false
    t.text     "guideline",               null: false
    t.integer  "guideline_id",            null: false
    t.integer  "priority"
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "case_number",       null: false
    t.integer  "account_number",    null: false
    t.string   "product_name",      null: false
    t.string   "product_verion",    null: false
    t.text     "comment",           null: false
    t.datetime "comment_time_date", null: false
    t.integer  "comment_owner_id",  null: false
    t.integer  "case_owner",        null: false
    t.integer  "collaborator_id",                array: true
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "login_id",               null: false
    t.text     "name",                   null: false
    t.string   "password",   limit: 100, null: false
    t.string   "address",    limit: 30
  end

end
