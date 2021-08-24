class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items, id: :integer do |t|
      t.integer :item_id
      t.integer :customer_id
      t.integer :amount
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :cart_items, :items
    add_foreign_key :cart_items, :customers
  end
end
