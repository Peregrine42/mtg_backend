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

ActiveRecord::Schema.define(version: 20160213211836) do

  create_table "cards", force: :cascade do |t|
    t.integer  "node_id"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.integer  "node_id"
    t.integer  "x"
    t.integer  "y"
    t.float    "rot"
    t.float    "scale"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "graphable_id"
    t.string   "graphable_type"
  end

  add_index "nodes", ["graphable_type", "graphable_id"], name: "index_nodes_on_graphable_type_and_graphable_id"
  add_index "nodes", ["id"], name: "index_nodes_on_id"

  create_table "roots", force: :cascade do |t|
    t.integer  "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
