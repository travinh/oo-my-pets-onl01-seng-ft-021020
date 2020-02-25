class Owner
  # code goes here
  
  attr_reader :name, :species
  
  @@all=[]
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    cats = Cat.all.select do |cat|
      cat.owner.name == self.name 
    end
    cats
  end
  
  def dogs 
    dogs = Dog.all.select do |dog|
      dog.owner.name == self.name 
    end
    dogs
  end
  
  
end