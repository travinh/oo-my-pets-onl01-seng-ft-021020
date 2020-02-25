class Dog
  # code goes here
  
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@all =[]
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    
  end
  
  def self.all 
    @@all 
  end
  
   def dogs 
    dogs = Dog.all.select do |dog|
      dog.owner.name == self.name 
    end
    dogs
  end
  
  
end