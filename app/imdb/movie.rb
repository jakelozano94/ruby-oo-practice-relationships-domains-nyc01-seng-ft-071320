class Movie
    @@all = []
    attr_reader :title
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end


    def charactermovies
        CharacterMovie.all.select{|pair| pair.movie == self}
     end
     
     def characters
     charactermovies.map{|pair| pair.character}.uniq
     end
 
     def actors
         characters.map{|pair| pair.actor}.uniq
     end
 
    def self.most_actors
        Movie.all.max_by{|movie| movie.actors.count}
    end
end