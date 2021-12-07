# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# 100.times do
#   user = User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password
#   )
#   user.save!
# end
User.destroy_all
Room.destroy_all
Booking.destroy_all
puts "database cleared"
puts "creating seeds"
melinda = User.create!(name: 'mel', email: 'mel@spaceout.com', password: 'mypassword')
room1 = Room.create!(
  title: 'High-End Room',
  address: 'Mackenzie St',
  description: 'Amazing meeting room. Great for privacy and secret meetings',
  capacity: '4',
  user_id: melinda.id,
  availability_start: "01-02-2022 10:00",
  availability_end: "01-02-2022 13:30",

)
room2 = Room.create!(
  title: 'Funky Meetings',
  address: 'Williamson St, Melbourne',
  description: 'Perfect for all your random meetings. Get funky in here woo!',
  capacity: '10',
  user_id: melinda.id,
  availability_start: "01-02-2022 10:00",
  availability_end: "01-02-2022 13:30",
)

room3 = Room.create!(
  title: 'Calm Meetings',
  address: 'Bourke St, Melbourne',
  description: 'A calming space to assist while focussing!',
  capacity: '10',
  user_id: melinda.id,
  availability_start: "12-02-2022 10:00",
  availability_end: "12-02-2022 13:30",
)

room4 = Room.create!(
  title: 'Big Meetings',
  address: 'Bourke St, Melbourne',
  description: 'A calming space to assist while focussing!',
  capacity: '10',
  user_id: melinda.id,
  availability_start: "12-02-2022 10:00",
  availability_end: "12-02-2022 13:30",
)

booking1 = Booking.create(user_id: melinda.id, room_id: room1.id, booking_start: Date.today, booking_end: Date.tomorrow)
puts room1.title
puts melinda.name
