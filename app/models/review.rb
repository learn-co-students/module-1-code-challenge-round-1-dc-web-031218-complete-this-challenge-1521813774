require 'pry'

class Review
    attr_accessor :review, :restaraunt, :customer

    @@all = []

    def initialize(restaurant, content, customer)
      @customer = customer
      @content = content
      @restaurant = restaurant
      @@all << self
      #add to restaurant
      #add to customer
      customer.add_review(self)

    end

    def self.all
      @@all
    end

    def customer #working
      self.customer = @customer
    end

    def restaurant #working
      @restaurant
    end

end
