class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "postal_code", default: "", null: false
    t.string "address", default: "", null: false
    t.integer "shipping_cost", default: 800, null: false
    t.integer "total_price", null: false
    t.integer "payment_method", null: false
    t.integer "status", default: 0, null: false
    t.timestamps
    end
  end
end
