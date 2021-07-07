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

  def owners_cars 
    Car.all.select{ |car| car.car_owner == self }
  end 

  def owners_mechanics 
    owners_cars.map{ |car_owner| car_owner.mechanic}
  end 

  def self.average_amount 
    total_owners = Car.all.map{ |car| car.car_owner }.length
    total_cars = Car.all.map{ |car| car.model }.count 
    average = total_cars / total_owners
    average 
  end


end
