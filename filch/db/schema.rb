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

ActiveRecord::Schema.define(version: 2019_07_07_062447) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "blacklists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "flagged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blacklists_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rant_id"
    t.text "description"
    t.integer "like"
    t.integer "unlike"
    t.integer "inapropiate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rant_id"], name: "index_comments_on_rant_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dumpsters", force: :cascade do |t|
    t.integer "rant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rant_id"], name: "index_dumpsters_on_rant_id"
  end

  create_table "geofences", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rants", force: :cascade do |t|
    t.integer "user_id"
    t.integer "geofence_id"
    t.string "title"
    t.text "description"
    t.integer "like"
    t.integer "unlike"
    t.string "status"
    t.integer "inapropiate"
    t.boolean "visibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geofence_id"], name: "index_rants_on_geofence_id"
    t.index ["user_id"], name: "index_rants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.integer "geofence_id"
    t.string "role"
    t.string "uid"
    t.string "provider"
    t.string "sex"
    t.text "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["geofence_id"], name: "index_users_on_geofence_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
