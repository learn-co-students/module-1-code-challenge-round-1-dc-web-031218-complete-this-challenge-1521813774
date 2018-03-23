class Review
attr_accessor :review

@@all = []

def initialize(review)
  @review = review
  @@all << self
end

def self.all
  @@all
end

def customer
  restaurant.all.select {|review| review.(self)}
end

def restaurant
  Restaurant.all.collect {|restaurant| restaurant.review(self)}
end

end





# Build out the following methods on the Review class
#
# Review.all
# returns all of the reviews
# Review#customer
# returns the customer for that given review
# Review#restaurant
# returns the restaurant for that given review
