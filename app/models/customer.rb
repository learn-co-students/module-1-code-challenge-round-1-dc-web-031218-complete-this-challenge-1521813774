class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  @@full_names = []

  def full_name
    @@full_names << "#{first_name} #{last_name}"
  end

  def self.all
    #returns all customers
    @@all
  end

  def self.find_by_name(name)
    #given a string of a full name,
    #returns the first customer whose
    #full name matches
    first_last = name.split(" ") #splits name into array of first and last name
    all.select do |customer|
      customer.first_name == first_last[0] && customer.last_name == first_last[1]
    end
  end

  def self.find_all_by_first_name(name)
    #given a string of a first name,
    #returns an array containing all
    #customers with that first name
    all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    #should return an array of all of
    #the customer full names
    @@full_names
  end

  def add_review(restaurant, content)
    #given some content and a
    #restaurant, creates a new review
    #and associates it with that
    #customer and that restaurant
    Review.new(restaurant, self, content)
  end
end
