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

ActiveRecord::Schema.define(version: 20130718112912) do

  create_table "actor_photos", force: true do |t|
    t.string   "caption"
    t.string   "actor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "actors", force: true do |t|
    t.string   "name"
    t.date     "dob"
    t.text     "biography"
    t.decimal  "rating",     precision: 10, scale: 0, default: 0
    t.integer  "view_count",                          default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actors_movies", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "actor_id"
  end

  create_table "movie_photos", force: true do |t|
    t.string   "caption"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "director"
    t.date     "release_date"
    t.text     "synopsis"
    t.decimal  "rating",       precision: 10, scale: 0, default: 0
    t.integer  "view_count",                            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
