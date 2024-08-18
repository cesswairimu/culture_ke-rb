class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles, id: :uuid do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
