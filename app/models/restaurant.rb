class Restaurant
  attr_accessor :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name (name)
    name = all.find do |restaurant|
      restaurant.name == name
    end
    if name != nil
      name
    else
    "No matches"
    end
  end

  def reviews
    reviews = review.all.select do |review|
      review.restaurant == self
    end
      reviews.length != 0 ? reviews : "No Customers"
  end

  def customers
    customers = review.all.select do |review|
      review.restaurant == self
    end
      customers.length != 0 ? customers : "No Customers"
  end


end
