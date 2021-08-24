class CreateGenres < ActiveRecord::Migration[5.2]
  def change
     create_table :genres do |t|
      t.string :name, default: "", null: false
      t.boolean "is_enabled", default: true, null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.timestamps
    end
  end
end
