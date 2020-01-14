class Car
  @@all=[]
  attr_reader :make, :model, :classification, :car_owner, :mechanic, :car_count, :specialty

  def initialize(make, model, classification,car_owner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
    
  end
  def self.all
    @@all
  end
  def self.classification
    self.all.map{|car| car.classification}
  end
  def mechanics_expertise
    Mechanic.all.select{|mechanic|mechanic.specialty == self.classification}
  end
end
