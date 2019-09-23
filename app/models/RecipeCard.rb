class RecipeCard
    attr_accessor :rating, :date, :user, :recipe
    @@all = []

    def initialize(recipe, date, rating, user)
        @recipe = recipe
        @date = date
        @rating = rating
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end
end

        