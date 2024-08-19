class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags, id: :uuid do |t|
      t.string :label
      t.serial :number

      t.timestamps
    end
  end
end
