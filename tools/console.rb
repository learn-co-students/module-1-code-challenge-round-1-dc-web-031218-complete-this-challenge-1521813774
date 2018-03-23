require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



#Pry.start

c1 = Customer.new("Hector", "Garcia")
c2 = Customer.new("Andrew", "Temple")
c3 = Customer.new("Tasha", "Williams")
c4 = Customer.new("Austin", "Wolfe")
c5 = Customer.new("Austin", "Wolfe")
c4.full_name
c2.full_name

apple = Restaurant.new("Applebees")
shoneys = Restaurant.new("Shoneys")
outback = Restaurant.new("Outback")
hooters = Restaurant.new("Hooters")

r1 = c1.add_review(apple, "Good Shit")
c2.add_review(outback, "Could've been better")
binding.pry

apple = Restaurant.new("Applebees")
shoneys = Restaurant.new("Shoneys")
outback = Restaurant.new("Outback")
hooters = Restaurant.new("Hooters")
