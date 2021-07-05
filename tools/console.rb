require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("John")
co2 = CarOwner.new("Jack")
co3 = CarOwner.new("Alex")


m1 = Mechanic.new("Bob", "antique")
m2 = Mechanic.new("Joe", "exotic")
m3 = Mechanic.new("Ben", "exotic")
m4 = Mechanic.new("Jason", "clunker")


c1 = Car.new("aa", "newone", "exotic",co1, m2 )
c2 = Car.new("aa", "oldone","clunker", co1, m4 )
c3 = Car.new("bb", "classicone", "antique", co2, m1)
c4 = Car.new("bb", "solidone", "clunker", co2, m4)
c5 = Car.new("cc", "movieone", "antique", co3, m1)
c6 = Car.new("cc", "foreignone", "exotic", co3, m3)
binding.pry
