class AddResetPasswardTokenToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :reset_password_token, :string
    add_column :customers, :reset_password_sent_at, :datetime
  end
end
