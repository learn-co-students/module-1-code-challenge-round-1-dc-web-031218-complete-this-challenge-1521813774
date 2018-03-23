class Restaurant
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #returns all restaurants
    @@all
  end

  def self.find_by_name(name)
    #given a string of restaurant name,
    #returns the first restaurant that
    #matches
    all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    #returns an array of all reviews
    #for a restaurant instance
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    #should return all of the customers
    #who have written reviews of that
    #restaurant.
    reviews.collect do |review|
      review.customer
    end
  end
end
