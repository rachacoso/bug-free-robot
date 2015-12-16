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

ActiveRecord::Schema.define(version: 20151216233106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "arts_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "arts_types_media_types", id: false, force: :cascade do |t|
    t.integer "media_type_id", null: false
    t.integer "arts_type_id",  null: false
  end

  add_index "arts_types_media_types", ["arts_type_id", "media_type_id"], name: "index_arts_types_media_types_on_arts_type_id_and_media_type_id", using: :btree
  add_index "arts_types_media_types", ["media_type_id", "arts_type_id"], name: "index_arts_types_media_types_on_media_type_id_and_arts_type_id", using: :btree

  create_table "choice_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "choices", force: :cascade do |t|
    t.string   "name"
    t.integer  "times_served"
    t.integer  "times_selected"
    t.integer  "choice_category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "media_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "times_served"
    t.integer  "duration"
    t.integer  "arts_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "media_type_id"
  end

  create_table "media_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mood_choices", force: :cascade do |t|
    t.integer  "mood_id"
    t.integer  "choice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mood_scores", force: :cascade do |t|
    t.integer  "score"
    t.boolean  "is_on"
    t.integer  "media_item_id"
    t.integer  "mood_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "moods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "choices", "choice_categories"
  add_foreign_key "media_items", "arts_types"
  add_foreign_key "media_items", "media_types"
  add_foreign_key "mood_choices", "choices"
  add_foreign_key "mood_choices", "moods"
  add_foreign_key "mood_scores", "media_items"
  add_foreign_key "mood_scores", "moods"
end
