class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, id: :integer do |t|
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :shipping_cost
      t.integer :total_payment
      t.integer :payment_method, defalut: 0
      t.integer :status, defalut: 0
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :orders, :custemeres
  end
end

