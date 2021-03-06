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

ActiveRecord::Schema.define(version: 20150731211738) do

  create_table "data_files", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projet_to_user_links", force: true do |t|
    t.integer  "projet_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projets", force: true do |t|
    t.text     "description"
    t.string   "sujet"
    t.date     "date_rendu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rendu_to_user_links", force: true do |t|
    t.integer  "rendu_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rendus", force: true do |t|
    t.integer  "note"
    t.integer  "projet_id"
    t.string   "data_file_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "mail"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
