require_relative '../config/environment.rb' 

require 'pry'
require_relative '../app/models/guests.rb'
require_relative '../app/models/listings.rb'
require_relative '../app/models/trips.rb'



greg = Guest.new("greg")
david = Guest.new ("david")
paul = Guest.new("paul")
mike = Guest.new("mike")

paris = Listing.new("paris")
houston = Listing.new("houston")
nyc = Listing.new("nyc")
chicago = Listing.new("chicago")
london = Listing.new("london")

trip1 = Trip.new(greg, london)
trip2 = Trip.new(david, paris)
trip3 = Trip.new(paul, nyc)
trip4 = Trip.new(mike, chicago)
trip5 = Trip.new(greg, houston)
trip6 = Trip.new(greg, nyc)
trip7 = Trip.new(mike, nyc)
trip8 = Trip.new(mike, paris)
trip9 = Trip.new(paul, paris)
trip10 = Trip.new(greg, paris)

binding.pry
last_line



# def reload
#   load 'config/environment.rb'
# end
