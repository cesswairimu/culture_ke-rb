class SerialRoleNumber < ActiveRecord::Migration[7.1]
  def change
    add_column :roles, :role_number, :serial
  end
end
