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

ActiveRecord::Schema.define(version: 20171025203551) do

  create_table "formulation_ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "formulation_id"
    t.bigint "ingredient_id"
    t.float "percentage", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formulation_id"], name: "index_formulation_ingredients_on_formulation_id"
    t.index ["ingredient_id"], name: "index_formulation_ingredients_on_ingredient_id"
  end

  create_table "formulations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.float "min_percentage", limit: 24
    t.float "max_percentage", limit: 24
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
  end

  create_table "patients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "surname"
    t.string "address"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients_ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "patient_id"
    t.bigint "ingredient_id"
    t.float "percentage", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_patients_ingredients_on_ingredient_id"
    t.index ["patient_id"], name: "index_patients_ingredients_on_patient_id"
  end

  add_foreign_key "formulation_ingredients", "formulations"
  add_foreign_key "formulation_ingredients", "ingredients"
  add_foreign_key "patients_ingredients", "ingredients"
  add_foreign_key "patients_ingredients", "patients"
end
