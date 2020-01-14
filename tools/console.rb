require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


o1=CarOwner.new('owner1')
o2=CarOwner.new('owner2')
o3=CarOwner.new('owner3')

m1=Mechanic.new('mechanic1', 'antique')
m2=Mechanic.new('mechanic2', 'exotic')
m3=Mechanic.new('mechanic3', 'clunker')
m4=Mechanic.new('mechanic4', 'antique')

c1=Car.new('make1', 'model1', 'antique', o1, m1)
c2=Car.new('make2', 'model2', 'exotic', o2, m2)
c3=Car.new('make3', 'model3', 'antique', o3, m1)
c4=Car.new('make4', 'model4', 'exotic', o1, m2)
c5=Car.new('make5', 'model5', 'clunker', o2, m3)
c6=Car.new('make6', 'model6', 'antique', o3, m1)

binding.pry
