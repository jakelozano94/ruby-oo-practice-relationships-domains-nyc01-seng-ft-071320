class Ingredient
    @@all = []
    attr_accessor :name, :calorie_count

    def initialize (name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def lists
        Ingredient_dessert.all.select {|list| list.ingredient == self}
    end

    def dessert
        lists.map{|list| list.dessert}
    end

    def bakeries
        dessert.map{|list| list.bakery}.uniq
    end
    
    def self.find_all_by_name(name1)
        Ingredient.all.select{|ingredient| ingredient.name.include?(name1)}
    end
end