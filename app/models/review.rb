class Review

  attr_accessor :restaurant, :customer, :score

@@all = []

def initialize(restaurant, customer, score)
  @restaurant = restaurant
  @customer = customer
  @score = score
  @@all << self
  
end



def self.all
  @@all
end





end
# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review
