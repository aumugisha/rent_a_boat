require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = URI.open('https://source.unsplash.com/weekly?boat')
Booking.destroy_all
Boat.destroy_all
User.destroy_all

user = User.create(
  email: "test@test.com", 
  password: "12345678"
)

user_two = User.create(
  email: "tests@test.com", 
  password: "12345678"
)
category = ["large boats", "medium boats", "small boats"]
10.times do 
  boat = Boat.create(
    user_id: user.id, 
    name: Faker::Name.name,
    category: category.sample,
    description: Faker::Lorem.sentence,
    price_per_day: (1..1000).to_a.sample.to_f,
    address:Faker::Address.full_address )
    boat.photo.attach(io: file, filename: 'boat.jpg', content_type: 'image/jpg')

puts boat.photo
end

