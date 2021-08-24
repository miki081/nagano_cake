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

ActiveRecord::Schema.define(version: 2021_07_31_134150) do

  create_table "addresses", force: :cascade do |t|
    t.integer "customer_id"
    t.string "name"
    t.string "postal_code"
    t.string "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "remember_created_at"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "item_id"
    t.integer "customer_id"
    t.integer "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
    t.string "phone_number", null: false
    t.string "postal_code", null: false
    t.string "admin_address", null: false
    t.datetime "deleted_at"
    t.index ["email"], name: "index_customer_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customer_admins_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "email"
    t.string "encrypted_password"
    t.string "address"
    t.string "telephone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "authenticate_customers_at"
    t.boolean "is_valid", default: true, null: false
    t.boolean "admin"
    t.datetime "remember_created_at"
    t.string "post_code", default: "", null: false
    t.boolean "is_enabled", default: true, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.boolean "is_enabled", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "cart_item_id"
    t.integer "genre_id"
    t.string "name"
    t.string "image_id"
    t.text "introduction"
    t.integer "price"
    t.boolean "is_deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "sale_status"
  end

  create_table "oder_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "order_id", null: false
    t.string "item_name", default: "", null: false
    t.integer "item_price", null: false
    t.integer "quantity", null: false
    t.integer "item_status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderdetails", force: :cascade do |t|
    t.integer "order_id"
    t.integer "item_id"
    t.integer "price"
    t.integer "amount"
    t.integer "making_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "postal_code", default: "", null: false
    t.string "address", default: "", null: false
    t.integer "shipping_cost", default: 800, null: false
    t.integer "total_price", null: false
    t.integer "payment_method", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_status", default: 0, null: false
  end

  create_table "ship_addresses", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "post_code", default: "", null: false
    t.text "address", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
