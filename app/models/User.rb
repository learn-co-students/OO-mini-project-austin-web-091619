require_relative "RecipeCard"
require_relative "Allergy"
require 'set'
class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        Recipe.all.select {|recipe| recipe.users == self}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, date, rating, self)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select {|allergen| allergen.user == self}
    end

    def top_three_recipes
        my_recipes = RecipeCard.all.select { |recipecard| recipecard.user == self }
        order = my_recipes.sort_by{ |rc| rc.rating }
        top_three = []
        top_three << order[-1].recipe
        top_three << order[-2].recipe
        top_three << order[-3].recipe
        top_three

    end

    def most_recent_recipe
        my_recipes = RecipeCard.all.select { |r| r.user == self}
        my_recipes[-1].recipe   
        #needs to be for one particular user, recipecard is used because each user creats cards when they use a recipe.
    end

    def safe_recipes
        recipes.reject do |recipe|
            recipe.ingredients.any? { |ingredient| allergens.include?(ingredient)}
    end
end
end        