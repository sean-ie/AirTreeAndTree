# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'open-uri'
Tree.destroy_all

puts 'Creating trees'
user = User.create(email: Faker::Internet.email, password: 1234567)
user.save!

tree1 = Tree.new(
  name: "Victoria's Creek",
  description: "A beautiful tree-house with access to a lake. Kayak included.",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 350,
  rating: 4,
  number_of_guests: 4,
  user_id: user.id
)
  tree1.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644338910/qing-zhang-qinger_zhang-Vpo7XGfd4tE-unsplash_zcj4y3.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree1.save!

  tree2 = Tree.new(
  name: "Shepherd's Woods",
  description: "An open-air tree-house for the lone camper in a secluded woodland. Be sure to pack extra sleeping-bags.",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 250,
  rating: 3.5,
  number_of_guests: 2,
  user_id: user.id
)
  tree2.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644338909/enea-rezhda-esK8rWSYOwQ-unsplash_ppvrnp.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree2.save!

  tree3 = Tree.new(
  name: "Aspen Lodge",
  description: "Stay in this extravagant winter hideaway. Fitted with modern heating and appliances, perfect for your winter ski-holiday",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 500,
  rating: 5,
  number_of_guests: 10,
  user_id: user.id
)
  tree3.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644338907/roberto-nickson-6FZf3yzuodE-unsplash_uguigj.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree3.save!

  tree4 = Tree.new(
  name: "Bob's Garden",
  description: "This is a cosy tree-treat for the lone traveller or couple. No signs of electricty here",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 100,
  rating: 2,
  number_of_guests: 2,
  user_id: user.id
)
  tree4.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065433/th2_hbllga.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree4.save!

  tree5 = Tree.new(
  name: "Tree Palace",
  description: "One of our finest properties. Spread over three expansive floors experience a luxury tree-house experience like never before",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 600,
  rating: 5,
  number_of_guests: 6,
  user_id: user.id
)
  tree5.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644061061/th1_ag45dm.png'), filename: 'tree.png', content_type: 'image/png')
  tree5.save!

  tree6 = Tree.new(
  name: "Treetop Spaceship",
  description: "Inspired by outer-space. A spherical wooden masterpiece, including a kitchen and fireplace",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 400,
  rating: 4.5,
  number_of_guests: 4,
  user_id: user.id
)
  tree6.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644063621/gqf59bwxeaaotrzf0wze.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree6.save!

  tree7 = Tree.new(
  name: "Serenity Lake",
  description: "Stay on the lake in this unique tree-house, perfect for a family boat trip. You might have to fight over who stays in the turrets in one of our finest properties.",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 450,
  rating: 4.5,
  number_of_guests: 8,
  user_id: user.id
)
  tree7.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065382/ravi-palwe-93538cQBNy4-unsplash_zhj1ts.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree7.save!

  tree8 = Tree.new(
  name: "Surfer's Paradise",
  description: "Perfect for a sea-side stay for the avid surfer. This cosy tree-house is protected from the elements, room for surf-board storage underneath the treehouse.",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 200,
  rating: 2,
  number_of_guests: 4,
  user_id: user.id
)
  tree8.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644338904/arnold-dogelis-MXoncUFOy9c-unsplash_ugts0l.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree8.save!

  tree9 = Tree.new(
  name: "Pine Lodge",
  description: "One of our favourite properties, pine-lodge sits amongst a forest of pines. With direct access to the lake, this is the perfect stay for your autumn holiday.",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 400,
  rating: 5,
  number_of_guests: 6,
  user_id: user.id
)
  tree9.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065420/joshua-chun-CXyQLd5e3mY-unsplash_arnasi.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree9.save!

  tree10 = Tree.new(
  name: "Moss Heights",
  description: "Stay high in the canopy in one of our tallest properties. Over 30ft above the ground, this is not a stay for the feint-hearted.",
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price: 300,
  rating: 3.5,
  number_of_guests: 4,
  user_id: user.id
)
  tree10.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644338910/miryam-leon-BwITbaWSPjk-unsplash_1_z867fx.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree10.save!


  # puts 'Creating 10 fake treehouses...'

# file = URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065420/joshua-chun-CXyQLd5e3mY-unsplash_arnasi.jpg')

#   10.times do
#   tree = Tree.new(
#     name: Faker::Lorem.word,
#     description: Faker::Lorem.words(number: 6, supplemental: true),
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     price: rand(0..500),
#     rating: rand(0..5),
#     number_of_guests: rand(0..10),
#     user_id: user.id
#   )
#   tree.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065420/joshua-chun-CXyQLd5e3mY-unsplash_arnasi.jpg'), filename: 'tree.png', content_type: 'image/png')
#   tree.save!
# end

# puts 'Finished!'
