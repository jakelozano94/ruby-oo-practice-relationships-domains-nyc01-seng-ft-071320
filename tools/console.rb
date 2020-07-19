require_relative '../config/environment.rb' 
require 'pry'
require_relative '../app/crowdfund/pledge.rb'
require_relative '../app/crowdfund/project.rb'
require_relative '../app/crowdfund/user.rb'



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
pledge7 = Pledge.new(5, car, greg)
pledge8 = Pledge.new(5, car, greg)
pledge9 = Pledge.new(5, car, greg)
pledge10 = Pledge.new(5, car, greg)
pledge11 = Pledge.new(5, car, greg)
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
