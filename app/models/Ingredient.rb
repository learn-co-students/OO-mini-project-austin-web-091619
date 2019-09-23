
class Ingredient
    attr_reader :name    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def allergies
        Allergy.all.select{|allergy| allergy.ingredient == self}
    end

    def allergy_count
        self.allergies.count
    end
    def self.most_common_allergen
      Ingredient.all.max{|ingredient1, ingredient2| 
      ingredient1.allergy_count <=> ingredient2.allergy_count}
    end


end