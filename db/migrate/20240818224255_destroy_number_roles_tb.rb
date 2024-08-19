class DestroyNumberRolesTb < ActiveRecord::Migration[7.1]
  def change
    remove_column :roles, :number
  end
end
