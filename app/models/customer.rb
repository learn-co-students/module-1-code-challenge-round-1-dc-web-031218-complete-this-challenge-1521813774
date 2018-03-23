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
  f_name = name.split[0]
  l_name = name.split[1]
  self.all.find do |customer|
    customer.first_name == f_name && customer.last_name == l_name
  end
end

def self.find_all_by_first_name(name)
  self.all.select do |customer|
    customer.first_name == name
  end
end

def self.all_names
customers = []
  self.all.collect do |customer|
  "#{customer.first_name} #{customer.last_name}"
  end
end

def add_review(restaurant, score)
  Review.new(restaurant, self, score)
end




end
# + Customer.all
#   + should return all of the customers
# + Customer.find_by_name(name)
#   + given a string of a full name, returns the first customer whose full name matches
# + Customer.find_all_by_first_name(name)
#   + given a string of a first name, returns an array containing all customers with that first name
# + Customer.all_names
#   + should return an array of all of the customer full names
# + Customer#add_review(restaurant, content)
#   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
