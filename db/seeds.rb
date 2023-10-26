# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Dans seeds.rb
city1 = City.create(city_name: "Paris")
city2 = City.create(city_name: "New York")

dogsitter1 = Dogsitter.create(name: "John Doe", city: city1)
dogsitter2 = Dogsitter.create(name: "Alice Johnson", city: city2)

dog1 = Dog.create(name: "Buddy", city: city1)
dog2 = Dog.create(name: "Max", city: city2)

# Créez des promenades (strolls)
Stroll.create(dogsitter: dogsitter1, dog: dog1, date: DateTime.now, city: city1)
Stroll.create(dogsitter: dogsitter2, dog: dog2, date: DateTime.now, city: city2)
