require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Woijech")
co2 = CarOwner.new("Simon")
co3 = CarOwner.new("Rikesh")

m1 = Mechanic.new("Sam", "Engine")
m2 = Mechanic.new("Harriet", "Suspension")
m3 = Mechanic.new("Sergio", "Brakes")

c1 = Car.new("VW", "Golf", "Engine", co1, m1)
c2 = Car.new("Ford", "Focus", "Engine", co1, m1)
c3 = Car.new("Tesla", "Cybertruck", "Suspension", co2, m2)
c4 = Car.new("Honda", "Civic", "Brakes", co3, m3)
binding.pry
