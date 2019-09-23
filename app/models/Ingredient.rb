require_relative 'RecipeIngredient'
require_relative 'Allergy'

class Ingredient

    @@all = []

    def initialize
        @@all << self
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

    def self.most_common_allergen
        Allergy.all.max_by { |allergy| allergy.ingredient.count}
    end

end
