# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying ingredient'
Ingredient.destroy_all

puts 'Destroying cocktail'
Cocktail.destroy_all


lemon = { name: 'lemon' }
ice = { name: 'ice' }
mint = { name: 'mint leaves' }

[lemon, ice, mint].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end

pina_colada = { name: 'Pina Colada' }
mojito = { name: 'Mojito' }
gin = { name: 'Gin' }

[pina_colada, mojito, gin].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end

puts 'Finished'
