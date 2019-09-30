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

ActiveRecord::Schema.define(version: 2019_09_30_190549) do

  create_table "attacks", force: :cascade do |t|
    t.string "name"
    t.boolean "air"
    t.boolean "ground"
    t.boolean "melee"
    t.integer "range"
    t.integer "range_upgrade"
    t.integer "damage"
    t.integer "damage_upgrade"
    t.float "cooldown"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_attacks_on_unit_id"
  end

  create_table "bonuses", force: :cascade do |t|
    t.string "sc_attribute"
    t.boolean "air"
    t.boolean "ground"
    t.integer "damage"
    t.integer "damage_upgrade"
    t.integer "shield_damage"
    t.integer "health_decrease"
    t.integer "attack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attack_id"], name: "index_bonuses_on_attack_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
  end

  create_table "sc_attributes", force: :cascade do |t|
    t.string "attr_type"
    t.string "short"
    t.string "name"
  end

  create_table "units", force: :cascade do |t|
    t.string "name", default: "Unit"
    t.integer "supply", default: 1
    t.integer "minerals", default: 50
    t.integer "gas", default: 0
    t.integer "build_time", default: 8
    t.float "size", default: 0.75
    t.integer "cargo", default: 1
    t.integer "armor", default: 0
    t.integer "armor_upgrade", default: 1
    t.integer "health", default: 45
    t.integer "shield", default: 0
    t.string "sc_attributes", default: "[]"
    t.float "cooldown"
    t.float "speed"
    t.integer "sight"
    t.integer "sight_upgrade"
    t.boolean "air"
    t.integer "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_units_on_race_id"
  end

end
