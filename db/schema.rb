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

ActiveRecord::Schema.define(version: 20171213184629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrollments", force: :cascade do |t|
    t.bigint "instructed_class_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructed_class_id"], name: "index_enrollments_on_instructed_class_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "gift_cards", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.integer "quanity"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["user_id"], name: "index_gift_cards_on_user_id"
  end

  create_table "instructed_classes", force: :cascade do |t|
    t.bigint "lesson_id"
    t.bigint "teacher_id"
    t.time "time"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.index ["lesson_id"], name: "index_instructed_classes_on_lesson_id"
    t.index ["teacher_id"], name: "index_instructed_classes_on_teacher_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "seats", force: :cascade do |t|
    t.string "section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_seatings", force: :cascade do |t|
    t.string "quanity"
    t.string "cost"
    t.bigint "seat_id"
    t.bigint "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seat_id"], name: "index_show_seatings_on_seat_id"
    t.index ["show_id"], name: "index_show_seatings_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date "date"
    t.string "time"
  end

  create_table "store_items", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "price"
    t.bigint "user_id"
    t.integer "quanity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["user_id"], name: "index_store_items_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.date "birthday"
    t.string "home_phone"
    t.string "cell_phone"
    t.boolean "subscribe_to_email"
    t.boolean "subscribe_to_newsletter"
    t.boolean "notification"
    t.string "relationship_to_user"
    t.boolean "paid_for_by_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "enrollments", "instructed_classes"
  add_foreign_key "enrollments", "users"
  add_foreign_key "gift_cards", "users"
  add_foreign_key "instructed_classes", "lessons"
  add_foreign_key "instructed_classes", "teachers"
  add_foreign_key "show_seatings", "seats"
  add_foreign_key "show_seatings", "shows"
  add_foreign_key "store_items", "users"
end
