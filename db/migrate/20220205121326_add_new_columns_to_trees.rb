class AddNewColumnsToTrees < ActiveRecord::Migration[7.0]
  def change
    add_column :trees, :rating, :integer
    add_column :trees, :photo, :string
  end
end
