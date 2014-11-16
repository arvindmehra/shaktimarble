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

ActiveRecord::Schema.define(version: 20141116195903) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "granites", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "granite_pics"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "zoom_image"
  end

  create_table "kishangarh_marbles", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kishangarh_marble_pics"
    t.string   "category"
    t.string   "zoom_image"
  end

  create_table "kota_stones", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "kota_stone_pics"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zoom_image"
  end

  create_table "makrana_marbles", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "makrana_marble_pics"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zoom_image"
  end

  create_table "marble_products", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "product_pics"
    t.string   "name"
    t.integer  "price"
    t.string   "zoom_image"
    t.string   "category"
  end

  create_table "markets", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_marbles", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
