require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mk = Customer.new("Mor", "Kenane")
nk = Customer.new("nizan", "Kenane")
mr = Customer.new("Mor", "Rotem")


chip = Restaurant.new("chipotle")
tac = Restaurant.new("taco")

rv1 = Review.new(chip, mk, 9)
rv2 = Review.new(tac, mr, 7)


Pry.start
