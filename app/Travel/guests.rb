class Guest
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    #good

    def listings
       trips.map {|trip| trip.listing}
    end
#good
    def trips
        Trip.all.select {|trip| trip.guest == self}
    end#good

    def trip_count
        trips.count
    end
#good
    def self.pro_traveller
        count_hash = Trip.all.each_with_object(Hash.new(0)) do |trip, new_hash|
            new_hash[trip.guest] += 1
        end
        var = count_hash.select {|k, v| v > 1}
        var.keys
    end
#good
    def self.find_all_by_name(name)
        Guest.all.select {|guest| guest.name == name}
    end
#good

end