class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  
  @@all = [] 

    def initialize(make, model, classification, car_owner, mechanic)
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

    def car_classifications 
      Car.all.map{ |car| car.classification }
    end 

    def mechanic_expertise 
      Car.all.select{ |car| car.mechanic.specialty == self.classification }
    end 


  end

