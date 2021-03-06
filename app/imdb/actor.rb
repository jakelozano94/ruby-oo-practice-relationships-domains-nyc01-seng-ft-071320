class Actor
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.actor == self}
    end

    def self.most_characters
        Actor.all.max_by{|actor| actor.characters.count}
    end

end