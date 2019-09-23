require_relative 'RecipeCard'
require_relative 'Allergy'

class User

    @@all = []

    def initialize 
       @@all << self
    end

    def recipes
        RecipeCard.all.select { |recipe_card| recipe_card.user == self}
    end

    def add_recipe_card (recipe, date, rating)
        RecipeCard.new(date, rating, self, recipe)
    end
    
    def declare_allergy (ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        allergies = Allergy.all.select { |allergy| allergy.user == self}
        allergies.map { |allergy| allergy.ingredient}
    end

    def top_three_recipes
        self.recipes.max_by { |recipe| recipe.count}
    end

    def most_recent_recipe
        self.recipes.last[0]
    end

    def safe_recipes
        
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end