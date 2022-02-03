class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.text :address
      t.float :price
      t.text :description
      t.float :longitude
      t.float :latitude
      t.integer :number_of_guests
      t.string :type_of_tree

      t.timestamps
    end
  end
end
