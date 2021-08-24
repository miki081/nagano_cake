class CustomerAdmins < ActiveRecord::Migration[5.2]
  def change
    drop_table :customer_admins
  end
end
