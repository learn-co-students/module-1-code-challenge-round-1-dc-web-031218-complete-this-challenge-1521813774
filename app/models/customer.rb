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
    all.find{|n| n.first_name == name.split[0] && n.last_name == name.split[1]}
  end

  def self.find_all_by_first_name(name)
    all.select{|n| n.first_name == name}
  end

  def self.all_names
    self.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    review = Review.new(restaurant, self, content)
  end

end
