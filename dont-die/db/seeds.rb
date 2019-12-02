# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

plant_species = ["Fiddle Leaf Fig", "Succulent", "Flower", "Shrub", "Fruit"]


200.times do
  User.create(name: Faker::Name.unique.name, username: Faker::Internet.unique.username, password: Faker::Internet.password)
end

5.times do |i|
  Species.create(name: plant_species[i], description: Faker::GreekPhilosophers.quote, img_url: Faker::DcComics.title)
end

500.times do
  Plant.create(name: Faker::Name.unique.name, dob: Faker::Date.birthday, notes: Faker::GreekPhilosophers.quote, user: User.all.sample, species: Species.all.sample)
end