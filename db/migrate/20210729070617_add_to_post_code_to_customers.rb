class AddToPostCodeToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :post_code, :string,  default: "", null: false
  end
end
