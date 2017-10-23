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

ActiveRecord::Schema.define(version: 20171022150932) do

  create_table "formulation_ingredients", force: :cascade do |t|
    t.integer "formulation_id"
    t.integer "ingredient_id"
    t.integer "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formulation_id"], name: "index_formulation_ingredients_on_formulation_id"
    t.index ["ingredient_id"], name: "index_formulation_ingredients_on_ingredient_id"
  end

  create_table "formulations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "min_percentage"
    t.integer "max_perecentage"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "address"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients_ingredients", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "ingridient_id"
    t.integer "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingridient_id"], name: "index_patients_ingredients_on_ingridient_id"
    t.index ["patient_id"], name: "index_patients_ingredients_on_patient_id"
  end

end