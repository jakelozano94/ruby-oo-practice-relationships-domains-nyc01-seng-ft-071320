class Character
    @@all = []
    attr_accessor :name, :actor, :charactershow, :charactermovie
    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

end