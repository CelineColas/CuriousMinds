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

ActiveRecord::Schema.define(version: 20160824153338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.text     "hint"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "challenges", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.integer  "difficulty"
    t.string   "file"
    t.integer  "teacher_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "efforts", force: :cascade do |t|
    t.string   "status"
    t.text     "content"
    t.integer  "quest_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["quest_id"], name: "index_efforts_on_quest_id", using: :btree
    t.index ["question_id"], name: "index_efforts_on_question_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "challenge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["challenge_id"], name: "index_questions_on_challenge_id", using: :btree
  end

  create_table "quests", force: :cascade do |t|
    t.string   "status"
    t.integer  "challenge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "student_id"
    t.index ["challenge_id"], name: "index_quests_on_challenge_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.string   "photo"
    t.string   "school"
    t.text     "experience"
    t.text     "interests"
    t.boolean  "teacher",                default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "challenges", "users", column: "teacher_id"
  add_foreign_key "efforts", "questions"
  add_foreign_key "efforts", "quests"
  add_foreign_key "questions", "challenges"
  add_foreign_key "quests", "challenges"
  add_foreign_key "quests", "users", column: "student_id"
end
