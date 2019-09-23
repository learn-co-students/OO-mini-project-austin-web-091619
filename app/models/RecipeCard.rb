class RecipeCard
    attr_reader :date, :rating, :user, :recipe
    @@all = []

    def initialize( user, recipe, date, rating)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end
    def self.all
        #should return all of the RecipeCard instances
        @@all 
    end
#date should return the date of the entry
#rating should return the rating (an integer) a user has given their entry
#user should return the user to which the entry belongs
#recipe should return the recipe to which the entry belongs

end
