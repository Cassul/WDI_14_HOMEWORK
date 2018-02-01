# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.delete_all

arr_name = ["Noah", "Liam", "Mason", "Jacob", "William", "Ethan", "James", "Aysa"]
arr_species = ["Bulbasaur", " Ivysaur", " Squirtle", " Butterfree", " Weedle", " Beedrill", " Pikachu", " Raichu"]
arr_levels = Array (1..8)

8.times do
  Pokemon.create(
    nickname: arr_name.sample,
    species: arr_species.sample,
    level: arr_levels.sample
  )
end