class AddItemNameToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :Item_name, :string
  end
end
