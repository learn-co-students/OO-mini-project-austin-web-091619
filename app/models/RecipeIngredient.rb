class RecipeIngredient

    attr_reader :ingredient, :recipe

    @@all = []

    def initialize (ingredient, recipe)
        @ingredient = ingredient
        @recipe = recipe

        @@all << self
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end