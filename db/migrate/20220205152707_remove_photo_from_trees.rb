class RemovePhotoFromTrees < ActiveRecord::Migration[7.0]
  def change
    remove_column :trees, :photo, :string
  end
end
