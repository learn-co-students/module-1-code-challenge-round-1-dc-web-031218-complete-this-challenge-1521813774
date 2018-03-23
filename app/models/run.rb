require 'pry'
#insert test data here
max = Customer.new("Max", "Goodman")
joan = Customer.new("Joan", "Newman")

dogtown = Restaurant.new("Dogtown")
steakhouse = Restaurant.new("Steakhouse")

dogtown_review = Review.new(dogtown, "The best garbage plate ever.", max)
steakhouse_review = Review.new(steakhouse, "The best steak ever.", joan)
binding.pry
" "
