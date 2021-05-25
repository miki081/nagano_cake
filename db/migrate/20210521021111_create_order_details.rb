class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :orderdetails, id: :integer do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :price
      t.integer :amount
      t.integer :making_status, defalut: 0
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :order_details, :orders
    add_foreign_key :order_details, :items
  end
end
