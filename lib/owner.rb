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
    cats = Cat.all.each do |cat|
      cat.owner.name == self.name 
    end
    cats
  end
  
  
end