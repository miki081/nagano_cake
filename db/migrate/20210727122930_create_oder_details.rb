class CreateOderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :oder_details do |t|

      t.timestamps
    end
  end
end
