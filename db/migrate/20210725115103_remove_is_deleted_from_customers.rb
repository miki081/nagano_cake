class RemoveIsDeletedFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :is_deleted, :blooean
  end
end
