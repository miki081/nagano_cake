class CreateGenres < ActiveRecord::Migration[5.2]
  def change
     create_table :genres, id: :inte do |t|
      t.integer :item_id
      t.string :name
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
    end
    add_foreign_key :genres, :items
  end
end
