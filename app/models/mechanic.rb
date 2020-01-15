class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def mechanics_cars
  Car.all.select {|car| car.mechanic == self}
end

def car_owners
  mechanics_cars.map {|car| car.car_owner}
end

def car_owners_names
  car_owners.map {|owner| owner.name}
end




end
