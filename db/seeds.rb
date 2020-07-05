# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

CATEGORY = %w(Shortboard Fish Gun Longboard Foamboard Bodyboard Funboard Other)

puts 'Clearing database'
User.destroy_all
Surfboard.destroy_all

puts 'Creating users'
cass = User.create!(
    email: "cass@user.com",
    password: "password",
    password_confirmation: "password"
  )
gloria = User.create!(
    email: "gloria@user.com",
    password: "password",
    password_confirmation: "password"
  )
zara = User.create!(
    email: "zara@user.com",
    password: "password",
    password_confirmation: "password"
  )
sean = User.create!(
    email: "sean@user.com",
    password: "password",
    password_confirmation: "password"
  )
omar = User.create!(
    email: "omar@user.com",
    password: "password",
    password_confirmation: "password"
  )

puts 'Creating surfboards'
cass_surfboard_1 = Surfboard.create!(
    user: cass,
    name: "Eco Bean",
    brand: "Lost Surfboards",
    price: rand(30..70),
    description: "Equipped with a very deep double concave through its fins, the Eco Bean glides through flat sections and accelerates rapidly when needed. The extra volume and medium rails give this board plenty of paddle power, making it the best board you will ever surf in small waves. If the waves are small, you won't want to be riding anything else.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  cass_surfboard_1.photo.attach(io: file, filename: 'cass_surfboard_1.png', content_type: 'image/png')

cass_surfboard_2 = Surfboard.create!(
    user: cass,
    name: "Flying Fish",
    brand: "Aquatic Social Scene",
    price: rand(30..70),
    description: "The flying fish features a fuller outline and rail section that allows for maximum stability, speed and control to glide on through those fatter waves. The Flying Fish in its larger sizes are ideal for a confident beginner but the shape won’t disappoint even the most experienced surfers.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  cass_surfboard_2.photo.attach(io: file, filename: 'cass_surfboard_2.png', content_type: 'image/png')

cass_surfboard_3 = Surfboard.create!(
    user: cass,
    name: "Flying Fish",
    brand: "Aquatic Social Scene",
    price: rand(30..70),
    description: "The flying fish features a fuller outline and rail section that allows for maximum stability, speed and control to glide on through those fatter waves. The Flying Fish in its larger sizes are ideal for a confident beginner but the shape won’t disappoint even the most experienced surfers.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  cass_surfboard_3.photo.attach(io: file, filename: 'cass_surfboard_3.png', content_type: 'image/png')

cass_surfboard_4 = Surfboard.create!(
    user: cass,
    name: "Flying Fish",
    brand: "Aquatic Social Scene",
    price: rand(30..70),
    description: "The flying fish features a fuller outline and rail section that allows for maximum stability, speed and control to glide on through those fatter waves. The Flying Fish in its larger sizes are ideal for a confident beginner but the shape won’t disappoint even the most experienced surfers.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  cass_surfboard_4.photo.attach(io: file, filename: 'cass_surfboard_4.png', content_type: 'image/png')

gloria_surfboard_1 = Surfboard.create!(
    user: gloria,
    name: "Re-Evolution",
    brand: "Beau Young",
    price: rand(30..70),
    description: "The Re Evolution is constructed using traditional Volan cloth for a heavier feel, creating improved glide and trim than a standard longboard. In addition to the incorporation of Volan cloth, the Re Evolution features an addition two layers of 6oz cloth on the deck and two 4oz layers on the bottom making this our toughest longboard to date.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  gloria_surfboard_1.photo.attach(io: file, filename: 'gloria_surfboard_1.png', content_type: 'image/png')

gloria_surfboard_2 = Surfboard.create!(
    user: gloria,
    name: "Re-Evolution",
    brand: "Beau Young",
    price: rand(30..70),
    description: "The Re Evolution is constructed using traditional Volan cloth for a heavier feel, creating improved glide and trim than a standard longboard. In addition to the incorporation of Volan cloth, the Re Evolution features an addition two layers of 6oz cloth on the deck and two 4oz layers on the bottom making this our toughest longboard to date.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  gloria_surfboard_2.photo.attach(io: file, filename: 'gloria_surfboard_2.png', content_type: 'image/png')

gloria_surfboard_3 = Surfboard.create!(
    user: gloria,
    name: "Re-Evolution",
    brand: "Beau Young",
    price: rand(30..70),
    description: "The Re Evolution is constructed using traditional Volan cloth for a heavier feel, creating improved glide and trim than a standard longboard. In addition to the incorporation of Volan cloth, the Re Evolution features an addition two layers of 6oz cloth on the deck and two 4oz layers on the bottom making this our toughest longboard to date.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  gloria_surfboard_3.photo.attach(io: file, filename: 'gloria_surfboard_3.png', content_type: 'image/png')

gloria_surfboard_4 = Surfboard.create!(
    user: gloria,
    name: "Re-Evolution",
    brand: "Beau Young",
    price: rand(30..70),
    description: "The Re Evolution is constructed using traditional Volan cloth for a heavier feel, creating improved glide and trim than a standard longboard. In addition to the incorporation of Volan cloth, the Re Evolution features an addition two layers of 6oz cloth on the deck and two 4oz layers on the bottom making this our toughest longboard to date.",
    deposit: rand(100...300),
    category: CATEGORY.sample,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file = URI.open("https://source.unsplash.com/featured/?surfboard")
  gloria_surfboard_4.photo.attach(io: file, filename: 'gloria_surfboard_4.png', content_type: 'image/png')

puts 'Finished!'

