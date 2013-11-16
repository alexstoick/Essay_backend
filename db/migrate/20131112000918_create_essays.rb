class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :title
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
