class Owner
  # code goes here
  
  @@all = [] #keeps track of the owners that have been created
  
  def initialize(name)
    @name = name
  end
  
  def self.all #shows all owners
    @@all
  end
  
end