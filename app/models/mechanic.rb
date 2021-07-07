class Mechanic
  @@all = []
  attr_reader :name, :specialty, :mechanic

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end
  def self.all
    @@all
  end
  def mechanic_cars
    Car.all.select{|car|car.mechanic == self}
  end
  def car_owners_mechanic
    mechanic_cars.map{|car|car.car_owner}.uniq
  end
  def list_names
    mechanic_cars.map{|owner|owner.car_owner.name}.uniq
  end
end
