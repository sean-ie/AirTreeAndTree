# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating user..'
lc = User.create(email: "lc@me.com", password: 1234567) 
lc.save!
puts 'Clearing database..'
Tree.destroy_all

puts 'Creating Treehouses'

tree = Tree.create(name: "Birch Treehouse", description: "Cosy heights", address: "123 Birchwood Forest", price: 50.00 , number_of_guests: 4 , type_of_tree: "Birch", user_id: lc.id)
tree.save!
# Tree.create(name: "Oak Treehouse", description: "Lofty Oak", address: "528 OakWood Heights", price: 40.00 , number_of_guests: 3 , type_of_tree: "Oak", user_id: User.first)
# Tree.create(name: "RainForest Treehouse", description: "Rainforest Home", address: "267 RainForest way", price: 90.00 , number_of_guests: 5 , type_of_tree: "Kapok", user_id: User.first)

puts 'Treehouses created'