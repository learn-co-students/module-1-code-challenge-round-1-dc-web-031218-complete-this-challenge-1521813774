class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all ||= []
  end

  def self.find_by_name(query)
    all.find{|restaurant|restaurant.name == query}
  end

  def reviews
    Review.all.select{|review|review.restaurant == self}
  end

  def customers
    reviews.map{|review|review.customer}
  end


end
