class CreateCustomerAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_admins,  force: :cascade do |t|
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

      t.timestamps
    end
  end
end
