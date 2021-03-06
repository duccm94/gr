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

ActiveRecord::Schema.define(version: 20170505080228) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["sender_id", "receiver_id"], name: "index_conversations_on_sender_id_and_receiver_id", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.text     "content"
    t.integer  "status",      default: 0
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "evaluation_criteria", force: :cascade do |t|
    t.string   "name"
    t.integer  "max_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_items", force: :cascade do |t|
    t.integer  "point",                     default: 0
    t.string   "name"
    t.integer  "evaluation_criterium_id"
    t.integer  "user_course_evaluation_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["evaluation_criterium_id"], name: "index_evaluation_items_on_evaluation_criterium_id"
    t.index ["user_course_evaluation_id"], name: "index_evaluation_items_on_user_course_evaluation_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "redmine_identifier"
    t.string   "image"
    t.text     "description"
    t.text     "content"
    t.integer  "course_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["course_id"], name: "index_subjects_on_course_id"
  end

  create_table "user_course_evaluations", force: :cascade do |t|
    t.integer  "total_point"
    t.text     "content"
    t.integer  "user_course_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_course_id"], name: "index_user_course_evaluations_on_user_course_id"
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["user_id", "course_id"], name: "index_user_courses_on_user_id_and_course_id", unique: true
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "user_subjects", force: :cascade do |t|
    t.integer  "status",         default: 0
    t.integer  "user_id"
    t.integer  "user_course_id"
    t.integer  "subject_id"
    t.integer  "course_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["course_id"], name: "index_user_subjects_on_course_id"
    t.index ["subject_id"], name: "index_user_subjects_on_subject_id"
    t.index ["user_course_id"], name: "index_user_subjects_on_user_course_id"
    t.index ["user_id"], name: "index_user_subjects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.date     "birthday"
    t.integer  "gender"
    t.string   "role",                default: "trainee"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "email",               default: "",        null: false
    t.string   "encrypted_password",  default: "",        null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
