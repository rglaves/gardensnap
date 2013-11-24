class AddAvatarToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatarUrl, :string
  end
end
