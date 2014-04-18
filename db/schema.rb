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

ActiveRecord::Schema.define(version: 20140418101657) do

  create_table "map_chips", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "map_items", force: true do |t|
    t.integer  "map_chip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "map_items", ["map_chip_id"], name: "index_map_items_on_map_chip_id", using: :btree

  create_table "maps", force: true do |t|
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "map_item_id"
  end

  add_index "maps", ["x", "y"], name: "index_maps_on_x_and_y", unique: true, using: :btree

end
