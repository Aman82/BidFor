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

ActiveRecord::Schema.define(version: 20141022000409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |a|
    a.datetime "created_at"
    a.datetime "updated_at"
  end

  create_table "bids", force: true do |b|
    b.string   "timestamp"
    b.float    "bid_amount"
    b.float    "bid_change"
    b.string   "bid_fee"
    b.datetime "created_at"
    b.datetime "updated_at"
  end

  create_table "cars", force: true do |c|
    c.string   "make"
    c.string   "model"
    c.integer  "year"
    c.string   "trim"
    c.integer  "mileage"
    c.string   "transmission"
    c.string   "color"
    c.string   "title"
    c.string   "avatar_file_name"
    c.string   "avatar_content_type"
    c.integer  "avatar_file_size"
    c.datetime "avatar_updated_at"
    c.datetime "created_at"
    c.datetime "updated_at"
  end

  create_table "items", force: true do |i|
    i.string   "item_name"
    i.string   "item_status"
    i.float    "asking_price"
    i.float    "notify_price"
    i.datetime "listing_date"
    i.datetime "expiration_date"
    i.text     "description"
    i.string   "avatar_file_name"
    i.string   "avatar_content_type"
    i.integer  "avatar_file_size"
    i.datetime "avatar_updated_at"
    i.datetime "created_at"
    i.datetime "updated_at"
  end

  create_table "polls", force: true do |p|
    p.datetime "created_at"
    p.datetime "updated_at"
  end

  create_table "sales", force: true do |s|
    s.string   "winning_bid"
    s.boolean  "seller_approval"
    s.boolean  "buyer_acceptance"
    s.datetime "completion_date"
    s.datetime "created_at"
    s.datetime "updated_at"
  end

  create_table "sallers", force: true do |s|
    s.string   "items_listed"
    s.string   "items_active"
    s.string   "last_activity"
    s.datetime "created_at"
    s.datetime "updated_at"
  end

  create_table "users", force: true do |u|
    u.string   "first_name"
    u.string   "last_name"
    u.string   "username"
    u.string   "email"
    u.string   "password_digest"
    u.string   "avatar_file_name"
    u.string   "avatar_content_type"
    u.integer  "avatar_file_size"
    u.datetime "avatar_updated_at"
    u.datetime "created_at"
    u.datetime "updated_at"
  end

  create_table "votes", force: true do |v|
    v.datetime "created_at"
    v.datetime "updated_at"
  end

end
