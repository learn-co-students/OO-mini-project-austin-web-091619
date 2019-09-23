# require 'require_all'
require 'bundler'
require 'bundler/setup'
Bundler.require
require_all 'app'


alec = User.new("alec")
joelle = User.new("joelle")


flour = Ingredient.new("flour")
cheese = Ingredient.new("cheese")
pepperoni = Ingredient.new("pepperoni")
sauce = Ingredient.new("sauce")
butter = Ingredient.new("butter")

pizza = Recipe.new(flour, cheese, pepperoni, sauce)
Recipe.new()
Recipe.new()

alec.declare_allergy(flour)

puts Recipe.all 
puts Allergy.all 
puts RecipeCard.all 
puts Ingredient.all 
