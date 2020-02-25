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
      cat.owner == self 
    end
    cats
  end
  
  def dogs 
    dogs = Dog.all.select do |dog|
      dog.owner == self
    end
    dogs
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name,self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name,self)
  end
  
  def walk_dogs
    dogs = self.dogs 
    dogs.map do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats = self.cats 
    cats.map do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    cats = self.cats
    cats.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs = self.dogs 
    dogs.map do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    
    
  end
  
  def list_pets
    cats = self.cats
    dogs = self.dogs
    #puts "I have #{cats.count} dog(s), and #{dogs.count} cat(s)."
    puts cats
  end
  
end