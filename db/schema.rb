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

ActiveRecord::Schema.define(version: 20141022025503) do

  create_table "bookmark_categories", force: true do |t|
    t.integer  "bookmark_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookmark_categories", ["bookmark_id"], name: "index_bookmark_categories_on_bookmark_id"
  add_index "bookmark_categories", ["category_id"], name: "index_bookmark_categories_on_category_id"

  create_table "bookmarks", force: true do |t|
    t.text     "url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  add_index "bookmarks", ["id"], name: "index_bookmarks_on_id", unique: true
  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_users", ["category_id"], name: "index_category_users_on_category_id"
  add_index "category_users", ["user_id"], name: "index_category_users_on_user_id"

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "bookmark_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["bookmark_id"], name: "index_likes_on_bookmark_id"
  add_index "likes", ["id"], name: "index_likes_on_id", unique: true
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["id"], name: "index_users_on_id", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
