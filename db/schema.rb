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

ActiveRecord::Schema.define(version: 2021_01_05_102743) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.string "city_code"
    t.integer "pref_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pref_id"], name: "index_cities_on_pref_id"
  end

  create_table "city_topics", force: :cascade do |t|
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_city_topics_on_city_id"
  end

  create_table "drafts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.string "select"
    t.string "comment"
    t.string "draft_approver_id"
    t.string "draft_status"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_drafts_on_user_id"
  end

  create_table "gov_topics", force: :cascade do |t|
    t.string "gov_name"
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pref_topics", force: :cascade do |t|
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.integer "pref_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pref_id"], name: "index_pref_topics_on_pref_id"
  end

  create_table "prefs", force: :cascade do |t|
    t.string "pref_name"
    t.string "pref_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "mail", default: "", null: false
    t.string "password", default: "", null: false
    t.string "password_confirmation", default: "", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "editor", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["mail"], name: "index_users_on_mail", unique: true
  end

  add_foreign_key "cities", "prefs"
  add_foreign_key "city_topics", "cities"
  add_foreign_key "drafts", "users"
  add_foreign_key "pref_topics", "prefs"
end
