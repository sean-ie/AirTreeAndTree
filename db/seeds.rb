# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating user..'
user = User.create(email: Faker::Internet.email, password: 1234567)
user.save!

puts 'Creating 10 fake treehouses...'

10.times do
  tree = Tree.new(
    name: Faker::Lorem.word,
    description: Faker::Lorem.words(number: 6, supplemental: true),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    price: rand(0..500),
    rating: rand(0..5),
    number_of_guests: rand(0..10),
    photo: URI.open('https://images.squarespace-cdn.com/content/v1/5f90d947c2c5a958455b42b0/1612329532867-VLPDIGN4929A0DWSYNWL/aura+house%2C+luxury+treehouse'),
    user_id: user.id
  )
  tree.save!
end
puts 'Finished!'

#puts 'Creating Treehouses'

#tree = Tree.create(name: "Birch Treehouse", description: "Cosy heights", address: "123 Birchwood Forest", price: 50.00 , number_of_guests: 4 , type_of_tree: "Birch", user_id: user.id)
#tree.save!
# Tree.create(name: "Oak Treehouse", description: "Lofty Oak", address: "528 OakWood Heights", price: 40.00 , number_of_guests: 3 , type_of_tree: "Oak", user_id: User.first)
# Tree.create(name: "RainForest Treehouse", description: "Rainforest Home", address: "267 RainForest way", price: 90.00 , number_of_guests: 5 , type_of_tree: "Kapok", user_id: User.first)

#puts 'Treehouses created'
