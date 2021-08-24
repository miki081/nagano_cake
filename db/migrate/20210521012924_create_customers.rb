class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
   create_table :customers, id: :integer  do |t|
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :email
      t.string :encrypted_password
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.boolean "is_deleted", null: false
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :customers, column: :cart_items_id
    add_foreign_key :customers, column: :order_id
  end
end
