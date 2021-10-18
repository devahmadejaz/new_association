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

ActiveRecord::Schema.define(version: 2021_10_18_120443) do

  create_table "educations", force: :cascade do |t|
    t.string "from_date"
    t.string "to_date"
    t.string "institute"
    t.string "degree_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id", null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "from_date"
    t.string "to_date"
    t.string "company_name"
    t.string "position"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id", null: false
    t.index ["resume_id"], name: "index_experiences_on_resume_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "released_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "experience_id", null: false
    t.index ["experience_id"], name: "index_publications_on_experience_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
    t.string "email"
    t.string "phone_number"
    t.string "weblinks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "skillstool", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id", null: false
    t.index ["resume_id"], name: "index_skillstool_on_resume_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "educations", "resumes"
  add_foreign_key "experiences", "resumes"
  add_foreign_key "publications", "experiences"
  add_foreign_key "resumes", "users"
  add_foreign_key "skillstool", "resumes"
end
