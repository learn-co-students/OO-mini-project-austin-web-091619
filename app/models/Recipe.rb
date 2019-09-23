require_relative 'RecipeCard'
require_relative 'RecipeIngredient'

class Recipe

    @@all = []

    def initialize
        @@all << self
    end

    def recipe_cards
        RecipeCard.all.select { |recipe_card|
            recipe_card.recipe == self
        }
    end

    def users
        recipe_cards.map { |recipe_card|
            recipe_card.user
        }
    end

    def recipe_ingredients
        RecipeIngredient.all.select { |recipe_ingredient|
            recipe_ingredient.recipe == self
        }
    end

    def ingredients
        recipe_ingredients.map { |recipe_ingredient|
            recipe_ingredient.ingredient
        }
    end

    def allergens
        ingredients.select { |ingredient|
            Allergy.all.find { |allergy|
                allergy.ingredient == ingredient
            }
        }
    end

    def add_ingredients (ingredients)
        RecipeIngredient.new(ingredients, self)
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

    def self.most_popular
        self.all.max_by { |recipe| recipe.users.count}
    end

end