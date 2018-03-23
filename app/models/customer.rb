require 'pry'

class Customer
  attr_accessor :first_name, :last_name, :review, :restaurant

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self #added
  end

  def full_name #given
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_customer(first_name, last_name)
    new_customer = Customer.new(first_name, last_name)
    @@all << new_customer
    #something missing here... ?
    @restaurant.add_customer(new_customer)
  end

  def self.find_by_name(name) #working
    self.all.find do |customer_obj|
      customer_obj.full_name == name
    end
  end

  def self.find_all_by_first_name(name) #working
    self.all.find do |customer_obj|
      customer_obj.first_name == name
    end
  end

  def self.all_names #working
    self.all.collect do |customer_obj|
      customer_obj.full_name
    end
  end

  def add_review(restaurant, content) #not working
    new_review = Review.new(restaurant, content)
    self.review = new_review
    #associates it with that customer and restaurant
  end

end
