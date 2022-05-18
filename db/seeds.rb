# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
  categories = %w[chinese italian japanese french belgian]
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.cell_phone_in_e164
  category = categories[rand(0..categories.count)]
  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: category)
  restaurant.save
end
