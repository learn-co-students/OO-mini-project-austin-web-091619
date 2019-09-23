class Recipe
    @@all =[]
  
    def initialize
        
        @@all << self
    end
    def self.all 
        # should return all of the recipe instances
        @@all
    end
    def self.most_popular 
        # should return the recipe instance with the highest number of users
        #  (the recipe that has the most recipe cards)
        self.all.max{|recipe1, recipe2| recipe1.users.count <=> recipe2.users.count}
        # self.all.max_by{|recipe| recipe.users.count}

    end
    def users
        #users should return the user instances who have recipe cards with this recipe
        array = RecipeCard.all.select{|rc| rc.recipe == self}
        array.map{|rc| rc.user}
    end
    def ingredients
        #ingredients should return all of the ingredients in this recipe
        r_i_array = RecipeIngredient.all.select{|ri| ri.recipe == self}
        r_i_array.map{|ri| ri.ingredient}
    end
    def allergens
        #allergens should return all of the Ingredients in this recipe 
        # that are allergens for Users in our system.
        self.ingredients.select{ |ingredient|
            Allergy.all.find{|allergy|
                allergy.ingredient == ingredient
            } 
        }
    end
    def add_ingredients(ingredient_array)
        #add_ingredients should take an array of ingredient instances as an argument,
        #  and associate each of those ingredients with this recipe
        ingredient_array.each{|ingredient| RecipeIngredient.new(self, ingredient)}
    end
end
