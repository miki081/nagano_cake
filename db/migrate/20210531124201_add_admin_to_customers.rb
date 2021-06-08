class AddAdminToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :admin, :boolean
    add_column :customers, :deleted_at, :datetime
    add_index :customers, :deleted_at
  end
end
