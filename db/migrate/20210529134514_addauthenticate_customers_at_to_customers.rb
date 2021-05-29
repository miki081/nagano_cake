class AddauthenticateCustomersAtToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :authenticate_customers_at, :datetime
  end
end
