class Show
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def charactershows
       CharacterShow.all.select{|pair| pair.show == self}
    end
    
    def characters
    charactershows.map{|pair| pair.character}.uniq
    end

    def actors
        characters.map{|pair| pair.actor}.uniq
    end

    def on_the_big_screen
        Movie.all.select{|movie| movie.title == self.title}
    end

end
