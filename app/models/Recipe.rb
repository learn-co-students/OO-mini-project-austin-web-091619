class Recipe
    attr_accessor :ingredients, :users
    @@all = []

    def initialize(ingredients)
        @ingredients = ingredients
        RecipeIngredient.new(ingredients, self)
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        RecipeCard.all.max_by {|p| p.recipe.count(p)}
    end

    def users
        RecipeCard.all.select do |rc|
            if rc.recipe == self
                rc.user
            end
        end
    end

    def allergens
        array = []
        ingredients.each do |i|
            Allergy.all.each do |a|
                if i == a
                    array << i
                end
            end
            array
        end
    end

    def add_ingredients(ingredient)
        ingredient.each do |i|
            @ingredients << i 
        end
        @ingredients
    end


end