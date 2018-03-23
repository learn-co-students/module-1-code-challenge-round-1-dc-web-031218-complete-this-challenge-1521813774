class Review
  attr_accessor :name, :restaurant, :customer, :content

  @@all = []

  def initialize(name="No Name", restaurant, customer, content)
    @name = name
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    #returns all reviews(contain
    #restaurant and customer attributes)
    @@all
  end

  def restaurant
    #returns the restaurant for that
    #given review
    self.restaurant
  end

  def customer
    #returns the customer for that
    #given review
    self.customer
  end
end
