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

ActiveRecord::Schema.define(version: 20150403171552) do

  create_table "messages", force: :cascade do |t|
    t.string   "message_content"
    t.string   "subject"
    t.string   "to_userid"
    t.string   "from_userid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "new_models", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "picture_id"
    t.string   "post_id_fk"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postcs", force: :cascade do |t|
    t.integer  "postcs_id"
    t.string   "user_idfk"
    t.string   "post_title"
    t.string   "post_description"
    t.string   "address"
    t.string   "country"
    t.string   "zip"
    t.string   "city"
    t.string   "home_type"
    t.integer  "rooms"
    t.integer  "baths"
    t.integer  "price"
    t.string   "price_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "user_id"
    t.string   "description"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "random_gits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string   "post_idfk"
    t.integer  "review_total"
    t.integer  "total_rated"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "review_id"
    t.integer  "post_idfk"
    t.integer  "user_idfk"
    t.string   "review_title"
    t.string   "review_desc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
