# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
User.destroy_all
Room.destroy_all
Booking.destroy_all
puts "database cleared"
puts "creating user account: Melinda"
melinda = User.create!(name: 'Melinda', email: 'mel@spaceout.com', password: 'mypassword')
puts "creating user account: Elana"
elana = User.create!(name: 'Elana', email: 'elana@spaceout.com', password: 'mypassword')
puts "creating user account: Mardina"
mardina = User.create!(name: 'Mardina', email: 'mardina@spaceout.com', password: 'mypassword')
puts "Creating 12 meeting rooms"
room1 = Room.create!(
  title: 'High-End Room',
  address: 'Mackenzie St',
  description: 'Amazing meeting room. Great for privacy and secret meetings',
  capacity: '4',
  user_id: elana.id,
  availability_start: "01-02-2023 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1610374792793-f016b77ca51a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'
)
room2 = Room.create!(
  title: 'Funky Meetings',
  address: 'Williamson St, Melbourne',
  description: 'Perfect for all your random meetings. Get funky in here woo!',
  capacity: '8',
  user_id: elana.id,
  availability_start: "01-02-2023 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1595329088732-d3b286981166?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'
)
room3 = Room.create!(
  title: 'Wooden Room',
  address: 'Collins St, Melbourne',
  description: 'This small, square office has coordinating wooden furniture. The floor is stone and the walls are papered.  ',
  capacity: '8',
  user_id: elana.id,
  availability_start: "01-02-2023 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1618543005334-b0904ecd4441?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1168&q=80'
)
room4 = Room.create!(
  title: 'Metallic Meeting Room',
  address: 'Hammond St, Melbourne',
  description: 'This small, square room has coordinating wooden and metal furniture. The seating is cushioned at',
  capacity: '12',
  user_id: elana.id,
  availability_start: "01-02-2023 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1503418895522-46f9804cda40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
room5 = Room.create!(
  title: 'Super Modern Meeting Room',
  address: 'Mackenzie St',
  description: 'The room is done in stormy colors and overall looks fairly modern.',
  capacity: '12',
  user_id: mardina.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1462826303086-329426d1aef5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
room6 = Room.create!(
  title: 'Playroom Meetings',
  address: 'Brunswick, Melbourne',
  description: 'The room is done in a country theme in warm colors and overall looks very eclectic.',
  capacity: '6',
  user_id: mardina.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1557804500-7a58fbcd4d1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'
)
room7 = Room.create!(
  title: 'Vogue Room',
  address: 'Mackenzie St',
  description: 'Perfect urban meeting space for modern fashionista.',
  capacity: '4',
  user_id: mardina.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1505409859467-3a796fd5798e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
room8 = Room.create!(
  title: 'Quirky Meetings',
  address: 'Williamson St, Melbourne',
  description: 'The outdoor space is done in cool colors and overall has a quirky look.',
  capacity: '8',
  user_id: mardina.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1520694420531-1d8eca53d7bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
room9 = Room.create!(
  title: 'Hot Desert Meetings',
  address: 'Geelong Avenue',
  description: 'The room is done in colors that remind you of the desert and overall looks a bit old-fashioned. ',
  capacity: '5',
  user_id: melinda.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1549944850-84e00be4203b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1068&q=80'
)
room10 = Room.create!(
  title: 'Mystery Room',
  address: 'Williamson St, Melbourne',
  description: 'Among the first things one notices walking in is a conspicuous stain on the floor.',
  capacity: '10',
  user_id: melinda.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1608855732020-8212e4afd397?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
room11 = Room.create!(
  title: 'Sea Blue Meeting',
  address: 'Mackenzie St',
  description: 'The room is done in an oceanic theme in soft colors and overall looks very eclectic. ',
  capacity: '12',
  user_id: melinda.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1498503182468-3b51cbb6cb24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
room12 = Room.create!(
  title: 'Greenhouse Room',
  address: 'Burke St, Melbourne',
  description: 'Among the first things one notices walking in are several houseplants',
  capacity: '10',
  user_id: melinda.id,
  availability_start: "01-12-2021 10:00",
  availability_end: "01-02-2023 13:30",
  image_url: 'https://images.unsplash.com/photo-1631130650210-e3863c8d9f8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'
)
puts "Finished!"
