class CreateOrderdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :orderdetails, force: :cascade do |t|
      t.integer :order_id, null: false
      t.integer :item_id, default: "", null: false
      t.integer :price, null: false
      t.integer :amount, null: false
      t.integer :item_status, defalut: 0, null: false
    end
    add_foreign_key :order_details, :orders
    add_foreign_key :order_details, :items
  end
end
