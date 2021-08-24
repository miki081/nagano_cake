class RemovePostalCodeFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :postal_code, :string
  end
end
