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

puts 'Creating user..'
user = User.create(email: Faker::Internet.email, password: 1234567)
user.save!

puts 'Creating 10 fake treehouses...'

# file = URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065420/joshua-chun-CXyQLd5e3mY-unsplash_arnasi.jpg')

  10.times do
  tree = Tree.new(
    name: Faker::Lorem.word,
    description: Faker::Lorem.words(number: 6, supplemental: true),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    price: rand(0..500),
    rating: rand(0..5),
    number_of_guests: rand(0..10),
    user_id: user.id
  )
  tree.photo.attach(io: URI.open('https://res.cloudinary.com/dnorywpdz/image/upload/v1644065420/joshua-chun-CXyQLd5e3mY-unsplash_arnasi.jpg'), filename: 'tree.png', content_type: 'image/png')
  tree.save!
end

puts 'Finished!'
