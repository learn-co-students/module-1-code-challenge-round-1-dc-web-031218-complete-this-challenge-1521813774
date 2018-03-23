class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self

  end

  def self.all
    @@all ||= []
  end

  def self.find_by_name(query)
    query = query.split(" ")
    all.find{|customer|customer.first_name == query[0] && customer.last_name == query[1]}
  end

  def self.find_all_by_first_name(first)
    all.select{|customer|customer.first_name == first}
  end

  def self.all_names
      all.map{|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def add_review(restaurant,content)
    review = Review.new(restaurant,content)
    review.customer = self
    review
  end


  def full_name
    "#{first_name} #{last_name}"
  end
end


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
