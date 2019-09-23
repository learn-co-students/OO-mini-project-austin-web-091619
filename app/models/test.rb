require_relative 'Allergy'
require_relative 'RecipeIngredient'
require_relative 'User'
require_relative 'Ingredient'
require_relative 'Recipe'
require_relative 'RecipeCard'

saul = User.new
wookeun = User.new
brad = User.new
angel = User.new

# puts "===== user test==="
# p User.all

saul.add_recipe_card("3/15", "9", "chocobar")
saul.add_recipe_card("3/17", "2", "cucumberSoup")

puts RecipeCard.all

