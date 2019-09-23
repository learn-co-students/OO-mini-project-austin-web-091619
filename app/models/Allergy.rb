class Allergy
    attr_reader :user, :ingredient
    @@all_allergies = []
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all_allergies << self
    end
    def self.all
        @@all_allergies
    end
end
