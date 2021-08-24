class CreateShipAddresses < ActiveRecord::Migration[5.2]
  def change
   create_table "ship_addresses", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "post_code", default: "", null: false
    t.text "address", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  end
end
