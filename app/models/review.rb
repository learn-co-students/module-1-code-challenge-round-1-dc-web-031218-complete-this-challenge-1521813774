class Review
  attr_accessor :customer, :restaurant, :content

  def initialize(restaurant,content)
    @restaurant = restaurant
    @content = content
    self.class.all << self
  end

  def self.all
    @@all ||= []
  end


end
