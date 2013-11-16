class AddParentIdToReply < ActiveRecord::Migration
  def change
    add_column :replies, :parent_id, :integer
  end
end
