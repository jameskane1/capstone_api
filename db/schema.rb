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

ActiveRecord::Schema.define(version: 20171127202315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "celebs", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "occupation"
    t.string "google"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_celebs_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "news_papers", force: :cascade do |t|
    t.string "name"
    t.string "site"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_news_papers_on_user_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "team"
    t.string "league"
    t.string "google"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_sports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "weathers", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "google"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_weathers_on_user_id"
  end

  add_foreign_key "celebs", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "news_papers", "users"
  add_foreign_key "sports", "users"
  add_foreign_key "weathers", "users"
end
