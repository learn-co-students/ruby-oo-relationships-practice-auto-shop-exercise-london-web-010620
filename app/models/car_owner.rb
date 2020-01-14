class CarOwner
  @@all= []
  attr_reader :name, :mechanic

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def list_owner_cars
    Car.all.select{|owner|owner.car_owner == self}
  end
  def list_owner_mechanics
    list_owner_cars.map{|owner|owner.mechanic.name}
  end
  def self.owner_cars
    all_cars = self.all.reduce(0){|total,curr|total + curr.list_owner_cars.size}
    all_cars/self.all.size
  end
end
