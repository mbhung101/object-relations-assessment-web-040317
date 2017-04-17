class Review

  attr_accessor :restaurant, :content, :customer

  @@all = []

  def initialize (restaurant,customer,content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @all << self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

end
