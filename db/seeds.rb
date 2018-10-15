# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |i|
    Movie.create(
        title: Faker::Movie.quote,
        description: Faker::Lorem.sentence,
        image:Faker::LoremPixel.image
    )
end
puts "20 movie created"

20.times do |i|
    Actor.create(
        name: Faker::Name.name,
        birthday: Faker::Date.birthday(18, 65),
        photo:Faker::LoremPixel.image
    )
end
puts "40 actor created"