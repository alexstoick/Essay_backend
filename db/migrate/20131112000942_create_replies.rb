class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
		t.string :content
		t.string :title
		t.integer :rating
		t.integer :user_id
		t.integer :essay_id
		t.timestamps
    end
  end
end
