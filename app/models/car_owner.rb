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

  #a list of all the cars that a specific owner has
  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  def my_car_mechanic
    cars.map {|car| car.mechanic}
  end

  def self.car_average
    cars = Car.all.length
    owners = self.all.length
    cars.to_f/owners.to_f
  end

end
