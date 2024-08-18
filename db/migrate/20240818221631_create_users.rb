class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :username
      t.string :f_name
      t.string :l_name
      t.string :email
      t.references :role, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
