class Ingredient
    attr_accessor :ingredient_name
    @@all = []

    def initialize(ingredient_name)
        @ingredient_name = ingredient_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        most_common = Allergy.all
        hash = Hash.new(0)
        most_common.each do |allergen|
            hash[allergen] += 1
        end
        yes = hash.max_by{ |k, v| v }[0]
        yes.ingredient
    end


end
