class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
   create_table :addresses, id: :integer do |t|
      t.integer :customer_id
      t.string :name
      t.string :postal_code
      t.string :address
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :addresses, :customeres
  end
end


