require 'pry'
class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |name|
    name == self.full_name
  end

  def self.find_all_by_first_name(name)
    customers_first_name = []
    @@all.select {|name| name == @first_name}.map


  end

  def self.all_names
    full_names = []
    full_names << full_name
    full_names
  end

  def add_review(restaurant, content)

  end
end


class Review
attr_accessor :review

@@all = []

def initialize(review)
  @review = review
  @@all << self
end

def self.all
  @@all
end

def customer
  restaurant.all.select {|review| review.(self)}
end

def restaurant
  Restaurant.all.collect {|restaurant| restaurant.review(self)}
end

end


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
