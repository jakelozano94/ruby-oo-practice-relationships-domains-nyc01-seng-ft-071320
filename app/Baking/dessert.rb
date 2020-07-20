class Dessert

    @@all = []
    attr_accessor :name, :bakery

    def initialize(name, bakery)
        @bakery = bakery
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def ingredients
        list1 = Ingredient_dessert.all.select {|list| list.dessert == self}
        list1.map{|ingredients| ingredients.ingredient}

    end

    def calories
        ingredients.map{|ingredient| ingredient.calorie_count}.sum
    end
end
