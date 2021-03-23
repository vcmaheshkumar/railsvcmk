class AddUserIdToVcmks < ActiveRecord::Migration[6.1]
  def change
    add_column :vcmks, :user_id, :integer
    add_index :vcmks, :user_id
  end
end
