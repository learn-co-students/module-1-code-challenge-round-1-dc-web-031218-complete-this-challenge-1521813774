require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###Objects

anne = Customer.new("Annabelle","Appleton")
billy = Customer.new("William","Brown")
cathy = Customer.new("Catherine","Connors")
richie = Customer.new("Richard","Rathers")
dick = Customer.new("Richard","Robertson")

vietnamese = Restaurant.new("Pho 14")
caribbean = Restaurant.new("Negril")
pizza = Restaurant.new("Paisano's")
texmex = Restaurant.new("Chipotle")

first = anne.add_review(vietnamese,"good")
second = billy.add_review(caribbean,"bad")
third = billy.add_review(pizza,"ugly")
fourth = cathy.add_review(texmex,"good")
fifth = richie.add_review(vietnamese,"bad")
sixth = dick.add_review(texmex,"ugly")

###PUTS

puts "\nCustomer"
puts first.customer
puts second.customer
puts third.customer
puts "\nFull Name"
puts cathy.full_name
puts "\nRestaurant"
puts fourth.restaurant
puts fifth.restaurant
puts sixth.restaurant
puts "\nAll"
puts Customer.all.inspect
puts Customer.all_names.inspect
puts Restaurant.all.inspect
puts Review.all.inspect
puts "\nFind Customer"
puts Customer.find_by_name("Annabelle Appleton").inspect
puts Customer.find_by_name("Richard Robertson").inspect
puts Customer.find_all_by_first_name("Richard").inspect
puts "\nFind Restaurant"
puts Restaurant.find_by_name("Pho 14").inspect
puts "\n Review Details"
puts vietnamese.reviews.inspect
puts vietnamese.customers.inspect





Pry.start
