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

ActiveRecord::Schema.define(version: 2020_02_19_224206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourite_shows", force: :cascade do |t|
    t.bigint "tv_show_id"
    t.bigint "user_id"
    t.boolean "marked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_show_id"], name: "index_favourite_shows_on_tv_show_id"
    t.index ["user_id"], name: "index_favourite_shows_on_user_id"
  end

  create_table "tv_channels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tv_show_reminders", force: :cascade do |t|
    t.bigint "tv_show_id", null: false
    t.bigint "user_id", null: false
    t.datetime "timing_tv_show"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_show_id"], name: "index_tv_show_reminders_on_tv_show_id"
    t.index ["user_id"], name: "index_tv_show_reminders_on_user_id"
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string "name"
    t.datetime "timing"
    t.bigint "tv_channel_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_channel_id"], name: "index_tv_shows_on_tv_channel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "tv_show_reminders", "tv_shows"
  add_foreign_key "tv_show_reminders", "users"
  add_foreign_key "tv_shows", "tv_channels"
end
