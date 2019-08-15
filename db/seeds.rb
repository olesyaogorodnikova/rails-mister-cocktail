# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ing = open(url).read
ingredients = JSON.parse(ing)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])

end

url = 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic'
cock = open(url).read
cocktails = JSON.parse(cock)

cocktails["drinks"].each do |cocktail|
  Cocktail.create(name: cocktail["strDrink"])
end
