class Bakery
    @@all = []
    attr_accessor :name
    
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        desserts.map{|dessert| dessert.ingredients}.flatten.uniq
    end

    def average_calories
        list1 = desserts.map{|dessert| dessert.ingredients}.flatten
       (list1.map{|ingredients| ingredients.calorie_count}.sum)/(self.desserts.count)

    end

    def shopping_list
        ingredients.map{|ingredient| ingredient.name}
    end
end