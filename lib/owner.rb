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
  
end