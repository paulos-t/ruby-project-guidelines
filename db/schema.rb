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

ActiveRecord::Schema.define(version: 2021_06_25_054457) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.string "hometown"
    t.string "alma_mater"
    t.integer "salary"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "year_released"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "rating"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
    t.string "charater"
    t.string "personality"
  end

end
