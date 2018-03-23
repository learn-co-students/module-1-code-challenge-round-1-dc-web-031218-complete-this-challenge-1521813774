class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    all.find{|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end

  def reviews
    #array of all reviews associated with this restaurant
    Review.all.select{|r| r.restaurant == self}
  end

  def customers
    #array of customers associated with this restaurant
    reviews.map{|r| r.customer}.uniq#get rid of multiple instances
  end

end
