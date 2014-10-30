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

ActiveRecord::Schema.define(version: 20141030005059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bids", force: true do |t|
    t.string   "timestamp"
    t.float    "bid_amount"
    t.float    "bid_change"
    t.string   "bid_fee"
    t.string   "name"
    t.float    "price"
    t.string   "auction_uniq_id"
    t.string   "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "trim"
    t.integer  "mileage"
    t.string   "transmission"
    t.string   "color"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "item_name"
    t.string   "item_status"
    t.float    "asking_price"
    t.float    "notify_price"
    t.datetime "listing_date"
    t.datetime "expiration_date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "bid_id"
  end

  create_table "polls", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.string   "winning_bid"
    t.boolean  "seller_approval"
    t.boolean  "buyer_acceptance"
    t.datetime "completion_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sallers", force: true do |t|
    t.string   "items_listed"
    t.string   "items_active"
    t.string   "last_activity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "reset_digest"
  end

  create_table "votes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
