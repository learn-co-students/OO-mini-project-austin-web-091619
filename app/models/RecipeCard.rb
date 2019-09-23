class RecipeCard

    attr_reader :date, :rating, :user, :recipe 

    @@all = []

    def initialize (date, rating, user, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe

        @@all << self
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end
    
end