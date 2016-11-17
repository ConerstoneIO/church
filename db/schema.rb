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

ActiveRecord::Schema.define(version: 20161117042340) do

  create_table "church_positions", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_church_positions_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "website_id"
    t.integer  "church_position_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["church_position_id"], name: "index_contacts_on_church_position_id"
    t.index ["website_id"], name: "index_contacts_on_website_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "authentication_token"
    t.string   "password_digest"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "websites", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_websites_on_user_id"
  end

end
