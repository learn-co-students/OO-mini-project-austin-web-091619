class RecipeIngredient
    attr_reader :recipe, :ingredient
    @@all = []
    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient
        @@all << self
    end
    def self.all
        #  should return all of the RecipeIngredient instances
        @@all
    end
    

end
