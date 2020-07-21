class CharacterMovie
    @@all = []
    attr_reader :movie, :character
    def initialize(character, movie)
        @character = character
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end
end