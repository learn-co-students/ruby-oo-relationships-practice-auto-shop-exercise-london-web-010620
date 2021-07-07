require 'pry'
class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.owner == self }
  end

  def mechanics
    self.cars.map { |car| car.mechanic }
  end

  def self.average_cars
    total_cars = @@all.reduce(0) { |total, owner| total + owner.cars.count }
    total_cars / @@all.count  
    # binding.pry
  end
  
    


end
