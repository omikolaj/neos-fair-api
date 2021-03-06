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

ActiveRecord::Schema.define(version: 20180502212410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_items", force: :cascade do |t|
    t.integer "user_id"
    t.money "price", scale: 2
    t.datetime "post_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ads", force: :cascade do |t|
    t.integer "ad_item_id"
    t.string "type"
    t.string "description"
    t.string "title"
    t.boolean "published", default: true
    t.boolean "sold", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type", "ad_item_id"], name: "index_ads_on_type_and_ad_item_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "ad_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "ad_item_id"
    t.string "title"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "ad_item_id"
    t.boolean "old"
    t.date "purchased_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "oauth", default: false
    t.integer "uid", default: -1
    t.money "wallet", scale: 2, default: "1000.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.index ["token"], name: "index_users_on_token"
  end

end
