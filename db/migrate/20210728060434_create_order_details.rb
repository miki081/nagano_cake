class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details , force: :cascade do |t|
    t.integer "order_id", null: false
    t.string "item_name", default: "", null: false
    t.integer "item_price", null: false
    t.integer "quantity", null: false
    t.integer "item_status", default: 0, null: false
 t.timestamps
    end
  end
end
