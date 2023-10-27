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

ActiveRecord::Schema[7.0].define(version: 2023_10_18_091139) do
  create_table "vehicle_module_owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_module_ownerships", force: :cascade do |t|
    t.string "vehicle_type", null: false
    t.integer "vehicle_id", null: false
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_vehicle_module_ownerships_on_owner_id"
    t.index ["vehicle_type", "vehicle_id"], name: "index_vehicle_module_ownerships_on_vehicle"
  end

  create_table "vehicle_module_posts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_module_report_content_options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_module_report_contents", force: :cascade do |t|
    t.integer "content_id"
    t.integer "reason"
    t.integer "Reported_by_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "other_reason"
  end

  create_table "vehicle_module_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_module_vehicles", force: :cascade do |t|
    t.string "type", null: false
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "vehicle_module_ownerships", "owners"
end
