require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
george = CarOwner.new("George")
gicu = CarOwner.new("Gicu")

tuli = Mechanic.new("Tuli","exotic")
zuli = Mechanic.new("Zuli","antique")

lambo = Car.new("Lamborghini","Hurran","exotic",george,tuli)
impala = Car.new("Chevrolet","Impala","antique",gicu,zuli)
dacia = Car.new("Dacia","Logan","antique",george,tuli)








binding.pry
puts "Pry is not working"