class CharacterShow
    @@all = []
    attr_reader :show, :character
    def initialize(character, show)
        @character = character
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end
end