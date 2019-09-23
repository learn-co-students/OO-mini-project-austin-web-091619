require_relative '../config/environment.rb'
#tests

timmy = User.new("timmy")
bob = User.new("bob")
spaghetti = Recipe.new
pizza= Recipe.new
toast = Recipe.new
pasta= Ingredient.new("pasta")
sauce = Ingredient.new("sauce")
cheese = Ingredient.new("cheese")
ingredient_array = [pasta, sauce, cheese]
spaghetti.add_ingredients(ingredient_array)
timmy.add_recipe_card(spaghetti, "today", 4)

sp_card = RecipeCard.new( bob, spaghetti, "today", 5)
bob.add_recipe_card(pizza, Time.now, 4)
bob.add_recipe_card(toast, "time", 3)

timmy.declare_allergy(cheese)

Recipe.most_popular



binding.pry
