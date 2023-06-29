# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_29_213039) do
  create_table "facts", force: :cascade do |t|
    t.string "fact"
    t.integer "species_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "fact_i18n", default: {}
    t.index ["species_id"], name: "index_facts_on_species_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "scientific_name"
    t.string "common_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "common_name_i18n", default: {}
  end

  add_foreign_key "facts", "species"
end
