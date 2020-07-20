require_relative '../config/environment.rb' 
require 'pry'
require_relative '../app/crowdfund/pledge.rb'
require_relative '../app/crowdfund/project.rb'
require_relative '../app/crowdfund/user.rb'

require_relative '../app/Baking/bakery.rb'
require_relative '../app/Baking/dessert.rb'
require_relative '../app/Baking/ingredients.rb'
require_relative '../app/Baking/ingredient_dessert.rb'

require_relative '../app/travel/guests.rb'
require_relative '../app/travel/trips.rb'
require_relative '../app/travel/listings.rb'
require "pry"

nyc1 = Listing.new("NYC")
nyc2 = Listing.new("NYC")
nyc3 = Listing.new("NYC")
chicago = Listing.new("Chicago")

john = Guest.new("john")
jaccob = Guest.new("jaccob")
jennifer = Guest.new("jennifer")
jake = Guest.new("jake")

john_trip = Trip.new(john,nyc1)
jaccob_trip = Trip.new(jaccob,nyc2)
jake_trip = Trip.new(jake,nyc3)
jennifer_trip = Trip.new(jennifer_trip,chicago)

lulu = Bakery.new("lulu")
mag = Bakery.new("mag")
song = Bakery.new("song")
lili = Bakery.new("lili")

cake = Dessert.new("cake", lulu)
pudding = Dessert.new("pudding", mag)
cookie = Dessert.new("cookie", song)
chocolate = Dessert.new("chocolate", lulu)
coffee = Dessert.new("coffee", mag)

sugar = Ingredient.new("sugar", 200)
flour = Ingredient.new("flour", 40)
butter = Ingredient.new("butter", 400)
cream  = Ingredient.new("cream", 300)
coffee_bean = Ingredient.new("coffee_bean", 100)

pair1 = Ingredient_dessert.new(cake, sugar)
pair2 = Ingredient_dessert.new(cake, butter)
pair3 = Ingredient_dessert.new(cake, flour)
pair4 = Ingredient_dessert.new(cookie, sugar)
pair7 = Ingredient_dessert.new(cookie, flour)
pair5 = Ingredient_dessert.new(chocolate, sugar)
pair6 = Ingredient_dessert.new(coffee, coffee)




greg = User.new("greg")
david = User.new ("david")
paul = User.new("paul")
mike = User.new("mike")

car = Project.new("car", greg, 1000)
bike = Project.new("bike", david, 1100)
book = Project.new("book", greg, 300)
keyboard = Project.new("keyboard", mike, 1000)
show = Project.new("show", mike, 15000)
headphones = Project.new("headphones", greg, 6000)
shirt = Project.new("shirt", david, 3000)


pledge1 = Pledge.new(5, car, greg)
pledge2 = Pledge.new(4, bike, greg)
pledge3 = Pledge.new(19, book, david)
pledge4 = Pledge.new(1000, car, paul)
pledge5 = Pledge.new(5000, show, mike)
pledge6 = Pledge.new(80, show, david)

binding.pry
last_line



 def reload
  load 'config/environment.rb'
end
