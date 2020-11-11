require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Creating restaurants..."

5.times do
restaurants = Restaurant.create!( name: Faker::Restaurant.name , address: Faker::Address.street_address,
 phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample )
end


puts "finished"
