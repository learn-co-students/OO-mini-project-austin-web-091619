class User
    attr_reader :name
    @@all = []
    def initialize(user_name)
        @name = user_name
        @@all << self
    end



    def self.all
        # should return all of the user instances
        @@all
    end 
    def recipe_cards
        #returns an array of recipecards, where the user == the current user
        RecipeCard.all.select{|card| card.user == self}
    end

    def recipes
        #recipes should return all of the recipes this user has recipe cards for
        self.recipe_cards.map{|card| card.recipe }
    end
    def add_recipe_card(recipe, date, rating)
    #add_recipe_card should accept a recipe instance as an argument,
    #  as well as a date and rating, and create a new recipe card
    #   for this user and the given recipe
        RecipeCard.new( self, recipe, date, rating)
    end
    def declare_allergy(ingredient)
    #declare_allergy should accept anIngredient instance as an argument, 
    # and create a new Allergy instance for this User and the given Ingredient
        Allergy.new(self, ingredient)
    end
    def allergens
        #allergens should return all of the ingredients this user is allergic to
        user_allergies_array = Allergy.all.select{|allergy| allergy.user == self }
        user_allergies_array.map{|allergy| allergy.ingredient}
    end
    def top_three_recipes
    #top_three_recipes should return the top three highest rated recipes for this user.
        top_cards = self.recipe_cards.max(3){|recipe_card1, recipe_card2| recipe_card1.rating <=> recipe_card2.rating} 
        top_cards.map{|card| card.recipe}
    end
    #most_recent_recipe should return the recipe
    #  most recently added to the user's cookbook.
    def most_recent_recipe
        self.recipe_cards.last.recipe
    end
    def self.most_allergic
        self.all.max{|u1,u2| u1.allergens.count <=> u2.allergens.count }
    end

    def safe_recipes
        Recipe.all.select{|recipe| (recipe.ingredients&self.allergens).count <1}
    end
end