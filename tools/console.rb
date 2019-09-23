require_relative '../config/environment.rb'



alec = User.new("alec")
joelle = User.new("joelle")
george = User.new("George")
chad = User.new("Chad")
cassidy = User.new("Cassidy")

flour = Ingredient.new("flour")
cheese = Ingredient.new("cheese")
pepperoni = Ingredient.new("pepperoni")
sauce = Ingredient.new("sauce")
butter = Ingredient.new("butter")
noodles = Ingredient.new("noodles")

pie = Recipe.new([butter])
RecipeIngredient.new(flour, pie)

# puts pie.ingredients
thing = Recipe.new([cheese, noodles, butter])
random = Recipe.new([pepperoni, butter])
pasta = Recipe.new([noodles])
pizza = Recipe.new([flour])
pasta.add_ingredients([sauce, butter])



joelle.add_recipe_card(random, "today", 2)
joelle.add_recipe_card(pasta, "today", 5)
joelle.add_recipe_card(pie, "today", 7)
joelle.add_recipe_card(thing, "today", 3)
joelle.add_recipe_card(pizza, "todßay", 10)

alec.add_recipe_card(pizza, "today", 10)
cassidy.add_recipe_card(pie, "toay", 3)
george.add_recipe_card(random, "today", 4)
alec.add_recipe_card(pasta, "today", 6)


alec.declare_allergy(flour)
george.declare_allergy(butter)
cassidy.declare_allergy(flour)
chad.declare_allergy(flour)
joelle.declare_allergy(flour)
# puts "===========all recipes================"
# puts Recipe.all 
# puts "===============all allergies======================"
# puts Allergy.all 
# puts "====================all recipe cards ================"
# puts RecipeCard.all 
# puts "===================all ingredients==============="
# puts pepperoni.ingredient_name

# puts joelle.most_recent_recipe
# puts pizza
# puts pizza.users
# puts Ingredient.most_common_allergen
# puts flour

# binding.pry
# puts "========================="
# puts joelle.top_three_recipes
# puts "==================="

# puts "=============pizza========="
# puts pizza
# puts "-============pie=========="
# puts pie
# puts "===============random==========="
# puts random
# puts "===========thing=========="
# puts thing
# puts "==========pasta========"
# puts pasta

puts joelle.safe_recipes