class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items, id: :integer do |t|
      t.integer :cart_item_id
      t.integer :genre_id
      t.string :name
      t.string :image_id
      t.text :introduction
      t.integer :price
      t.boolean "is_deleted", null: true
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :items, :cart_item, column: :cart_items_id
  end
end

