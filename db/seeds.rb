require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
Booking.destroy_all
Boat.destroy_all
User.destroy_all

user = User.create(
  email: "test@test.com", 
  password: "12345678",
  first_name: "john",
  last_name: "Doe"
)

user_two = User.create(
  email: "tests@test.com", 
  password: "12345678",
  first_name: "Ramiro",
  last_name: "Penedo"
)
category = ["large boats", "medium boats", "small boats"]
addresses = ["Brugplein 11", "3198 LK Europoort", 
"Western Docks", "Haven Kloosternol 1", 
"Nijverheidsstraat 11A", "149 Waterside Rd, Barton-upon-Humber DN18 5BG, United Kingdom",
"King's Saltern Rd, Lymington SO41 3QD, United Kingdom", "The Docks, Hakin, Milford Haven SA73 3AX, United Kingdom",
"Playa de Río Real Carretera N340 km 186, 29600 Marbella, Málaga, Spain","Av. Carmen Sevilla, s/n, 29670 Marbella, Málaga, Spain" ]
i = 0
10.times do
  
  boat = Boat.create(
    user_id: user.id, 
    name: Faker::Name.name,
    category: category.sample,
    description: Faker::Lorem.sentence,
    price_per_day: (1..1000).to_a.sample.to_f,

    address: Faker::Address.full_address )

    # boat.photo.attach(io: file, filename: 'boat.jpg', content_type: 'image/jpg')


    i += 1;
  


puts boat.name
end

