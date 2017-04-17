
class Customer
  attr_accessor :first_name, :last_name , :review

  @@all = []

  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = self.full_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name (name)
    all.find do |customer|
      customer.full_name == name
    end
    "No matches"
  end

  def self.find_all_by_first_name (first_name)
    results = []
    all.each do |customer|
      if customer.first_name == first_name
        results << self
      end
    end
    if results.length != 0
      return results
    else
      return "No matches"
    end
  end

  def self.all_names
    all.collect do |customers|
      customers.full_name
    end
  end

  def add_review (restaurant,content)
    new_review = Review.new(restaurant,self,content)
    reviews << new_review
  end
end
