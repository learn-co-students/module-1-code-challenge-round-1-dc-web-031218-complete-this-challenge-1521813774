class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(restaurant, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def customer
    # returns the customer for that given review
    @@all.select do |review|
      review.customer == self
  end

  def restaurant
    # returns the restaurant for that given review
    @@all.select do |review|
      review.restaurant == self
  end

  def self.all
    # returns all of the reviews
    @@all
  end

end
