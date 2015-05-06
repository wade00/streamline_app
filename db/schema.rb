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

ActiveRecord::Schema.define(version: 20150504164505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dealerships", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "equipment_alley_account"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "dealerships", ["user_id"], name: "index_dealerships_on_user_id", using: :btree

  create_table "listings", force: :cascade do |t|
    t.integer  "website"
    t.boolean  "current",    default: true
    t.integer  "user_id"
    t.integer  "machine_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "listings", ["machine_id"], name: "index_listings_on_machine_id", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "machines", force: :cascade do |t|
    t.string   "stock_number"
    t.string   "year"
    t.string   "make"
    t.string   "machine_model"
    t.string   "machine_type"
    t.string   "serial_number"
    t.string   "hours"
    t.string   "price"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "dealership_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "machines", ["dealership_id"], name: "index_machines_on_dealership_id", using: :btree
  add_index "machines", ["user_id"], name: "index_machines_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "dealerships", "users"
  add_foreign_key "listings", "machines"
  add_foreign_key "listings", "users"
  add_foreign_key "machines", "dealerships"
  add_foreign_key "machines", "users"
end
