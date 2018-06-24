class Owner
  # code goes here
  
  @@all = [] #keeps track of the owners that have been created
  
  def initialize(name)
    @name = name
    @@all << self #add self to the array
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
  
end