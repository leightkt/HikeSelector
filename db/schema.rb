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

ActiveRecord::Schema.define(version: 2021_01_06_223225) do

  create_table "hikes", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.boolean "dog_friendly"
    t.integer "distance"
    t.integer "elevation"
    t.string "difficulty"
  end

  create_table "userhikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hike_id"
    t.index ["hike_id"], name: "index_userhikes_on_hike_id"
    t.index ["user_id"], name: "index_userhikes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_string"
  end

  add_foreign_key "userhikes", "hikes"
  add_foreign_key "userhikes", "users"
end
