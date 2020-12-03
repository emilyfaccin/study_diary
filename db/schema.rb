# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_03_120415) do

  create_table "categories", primary_key: "category_id", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_studyitems", id: false, force: :cascade do |t|
    t.integer "studyitem_id", null: false
    t.integer "category_id", null: false
  end

  create_table "study_items", primary_key: "study_item_id", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "study_items_categories", force: :cascade do |t|
    t.integer "study_item_id_id", null: false
    t.integer "category_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id_id"], name: "index_study_items_categories_on_category_id_id"
    t.index ["study_item_id_id"], name: "index_study_items_categories_on_study_item_id_id"
  end

  add_foreign_key "study_items_categories", "category_ids"
  add_foreign_key "study_items_categories", "study_item_ids"
end
