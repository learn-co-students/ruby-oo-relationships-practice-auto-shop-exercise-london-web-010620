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

 def serviced_cars
    Car.all.select{|car| car.mechanic == self }
 end 

 def car_owner_mech
  serviced_cars.map{|car| car.car_owner}
 end 

 def car_owner_mech_names
  serviced_cars.map{|car| car.car_owner.name}
 end 

end
