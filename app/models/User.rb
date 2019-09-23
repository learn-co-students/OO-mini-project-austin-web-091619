require_relative "RecipeCard"
require_relative "Allergy"
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
        Recipe.all.select {|recipe| receipe.user == self}
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
        order = RecipeCard.all.sort_by!(RecipeCard.rating)
        top_three = []
        top_three.push(order[0], order[1], order[2])
        top_three
    end

    def most_recent_recipe
        Recipe.all[-1]
    end

end        