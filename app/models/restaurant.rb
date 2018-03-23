class Restaurant
  attr_accessor :name, :customer, :review

  @@all = []

  def initialize(name)
    @name = name
    @customer = customer
    @review = review
    @@all << self
  end

  def self.all
    # returns an array of all restaurants
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    @@all.find do |restaurant|
      restaurant == name
  end
end

def reviews
  Review.all.select do |review|
    restaurant.review == self
end

def customers
  Review.all.select do |customer|
    customer.review == self
end

end
