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
melinda = User.create!(name: 'mel', email: 'mel@gmail.com', password: 'mypassword')
room1 = Room.create!(
  title: 'meeting room',
  address: 'mackenzie St',
  description: 'okk looks good',
  capacity: '2',
  user_id: melinda.id,
  availability_start: "01-02-2022 10:00",
  availability_end: "01-02-2022 13:30",
)
booking1 = Booking.create(user_id: melinda.id, room_id: room1.id, booking_start: Date.today, booking_end: Date.tomorrow)
puts room1.title
puts melinda.name
