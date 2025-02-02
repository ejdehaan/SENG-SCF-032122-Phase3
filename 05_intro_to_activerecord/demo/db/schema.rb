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

ActiveRecord::Schema.define(version: 2022_06_15_003658) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.datetime "birthdate"
    t.string "breed"
    t.string "image_url"
    t.datetime "last_walked_at"
    t.datetime "last_fed_at"
  end

  create_table "feedings", force: :cascade do |t|
    t.datetime "time"
    t.integer "dog_id"
  end

  create_table "walks", force: :cascade do |t|
    t.datetime "time"
    t.integer "dog_id"
  end

  add_foreign_key "feedings", "dogs"
  add_foreign_key "walks", "dogs"
end
