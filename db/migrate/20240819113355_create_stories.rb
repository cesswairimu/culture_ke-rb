class CreateStories < ActiveRecord::Migration[7.1]
  def change
    create_table :stories, id: :uuid do |t|
      t.string :title
      t.string :body
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
