class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins, id: :integer do |t|
      t.string :email
      t.string :encrypted_password
      t.timestamp :created_at, defalut: -> { 'NOW()' }
      t.timestamp :updated_at, defalut: -> { 'NOW()' }
      t.timestamps
    end
  end
end
