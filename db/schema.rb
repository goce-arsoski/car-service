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

ActiveRecord::Schema.define(version: 2020_10_29_221327) do

  create_table "cars", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.integer "year"
    t.string "vin"
    t.integer "mileage"
    t.string "transmission"
    t.string "drive_type"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_number"
    t.string "part_name"
    t.integer "cost"
    t.string "part_designation"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vendor_id"
    t.index ["vendor_id"], name: "index_parts_on_vendor_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "date"
    t.integer "car_kilometers"
    t.string "work_description"
    t.integer "work_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "car_id"
    t.index ["car_id"], name: "index_services_on_car_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "website"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
