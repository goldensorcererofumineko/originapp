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

ActiveRecord::Schema[7.0].define(version: 2023_12_07_134651) do
  create_table "activity_details", charset: "utf8", force: :cascade do |t|
    t.bigint "dategraphs_id"
    t.integer "calories_consumed"
    t.string "field_of_work"
    t.string "field_of_study"
    t.string "mode_of_transportation"
    t.string "entertainment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dategraphs_id"], name: "index_activity_details_on_dategraphs_id"
  end

  create_table "dategraphs", charset: "utf8", force: :cascade do |t|
    t.string "activity_type"
    t.datetime "s_time"
    t.datetime "e_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activity_details", "dategraphs", column: "dategraphs_id"
end
