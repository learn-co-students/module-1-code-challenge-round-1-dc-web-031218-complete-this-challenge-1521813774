class Restaurant
  attr_accessor :name :review

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant == name
  end

  def reviews
    
  end

  def customers
    Customer.all.collect {|name| name.review(self)}
  end

end

# Build out the following methods on the restaurant class
#
# Restaurant.all
# returns an array of all restaurants
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
# should return all of the customers who have written reviews of that restaurant.
