class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :description, :string
    add_column :posts, :img, :string
  end
end
