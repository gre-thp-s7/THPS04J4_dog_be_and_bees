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

ActiveRecord::Schema.define(version: 2019_01_31_171600) do

  create_table "cities", force: :cascade do |t|
    t.text "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_sitters", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.integer "phone_number"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dog_sitters_on_city_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.text "dog_name"
    t.text "owner"
    t.text "race"
    t.text "alimentation"
    t.integer "owner_phone_number"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "dogs_strolls", force: :cascade do |t|
    t.integer "stroll_id"
    t.integer "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_dogs_strolls_on_dog_id"
    t.index ["stroll_id"], name: "index_dogs_strolls_on_stroll_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.text "place"
    t.datetime "when_it_happend"
    t.integer "dog_sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_sitter_id"], name: "index_strolls_on_dog_sitter_id"
  end

end
