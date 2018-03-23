require 'pry'

class Restaurant
  attr_accessor :name, :review, :customer
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #working
    @@all
  end

  def self.find_by_name(name)  #working
    self.all.find do |restaurant_obj|
      restaurant_obj.name == name
    end
  end
  
  def reviews #working
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers #working
    reviews.collect do |review|
      review.customer
    end
  end
end
