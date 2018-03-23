class Review
  attr_accessor :content, :customer, :restaurant

  @@all = []

  def initialize(content, customer, review)
    @content = content
    @customer = customer
    @review = review
    @@all << self
  end

  def self.all
    @@all
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
