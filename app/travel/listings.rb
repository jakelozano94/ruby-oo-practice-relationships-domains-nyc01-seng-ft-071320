class Listing
    attr_accessor :city
    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end
#good
    def trips
        Trip.all.select {|trip| trip.listing == self}
    end
#good
    def guests
        trips.map {|trip| trip.guest}
    end
#good
    def trip_count
        trips.count
    end
#good
    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end
#good
    def self.most_popular
        histo = Trip.all.each_with_object(Hash.new(0)) do |trip, new_hash|
            new_hash[trip.listing.city] += 1
        end
        max = histo.max_by{|k,v| v}
        max[0]
    end
    #good
end