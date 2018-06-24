class Owner
  # code goes here
  attr_reader :name
  @@all = [] #keeps track of the owners that have been created
  
  def initialize(name)
    @name = name
    @@all << self #add self to the array
    @species = "human"
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
  
end