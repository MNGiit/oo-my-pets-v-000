class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species, :pets
  @@all = [] #keeps track of the owners that have been created
  
  def initialize(name)
    @name = name
    @@all << self #add self to the array
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all #shows all owners
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.count
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |species|
      species.each {|pet| pet.mood = "nervous"}
    end
    @pets
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
      
  
end