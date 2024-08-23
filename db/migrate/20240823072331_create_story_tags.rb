class CreateStoryTags < ActiveRecord::Migration[7.1]
  def change
    create_table :story_tags, id: :uuid do |t|
      t.references :story, null: false, foreign_key: true, type: :uuid
      t.references :tag, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
