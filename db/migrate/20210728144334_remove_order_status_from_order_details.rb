class RemoveOrderStatusFromOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_details, :order_status, :integer
  end
end
