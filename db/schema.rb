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

ActiveRecord::Schema.define(version: 2020_09_02_033503) do

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.integer "experience_years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "language"
    t.integer "age"
  end

  create_table "tutoring_times", force: :cascade do |t|
    t.datetime "appointment_time"
    t.integer "student_id", null: false
    t.integer "coach_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_tutoring_times_on_coach_id"
    t.index ["student_id"], name: "index_tutoring_times_on_student_id"
  end

  add_foreign_key "tutoring_times", "coaches"
  add_foreign_key "tutoring_times", "students"
end
