class CreateEssayTags < ActiveRecord::Migration
  def change
    create_table :essay_tags do |t|
      t.integer :essay_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
