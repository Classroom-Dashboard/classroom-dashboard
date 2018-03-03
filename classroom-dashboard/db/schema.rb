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

ActiveRecord::Schema.define(version: 20180303210344) do

  create_table "sections", force: :cascade do |t|
    t.string "course"
    t.string "semester"
    t.integer "year"
    t.string "professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "firstName"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastname"
    t.string "pronouns"
    t.string "student_img_file_name"
    t.string "student_img_content_type"
    t.integer "student_img_file_size"
    t.datetime "student_img_updated_at"
    t.integer "course_id"
    t.integer "section_id"
    t.string "school"
  end

end
