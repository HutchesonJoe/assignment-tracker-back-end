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

ActiveRecord::Schema.define(version: 2022_04_26_204502) do

  create_table "assignments", force: :cascade do |t|
    t.string "description"
    t.string "due_date"
    t.integer "points"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "grade_level"
    t.float "gpa"
    t.string "email"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "points_earned"
    t.string "teacher_notes"
    t.integer "assignment_id"
    t.integer "student_id"
    t.datetime "submitted_at"
  end

end
