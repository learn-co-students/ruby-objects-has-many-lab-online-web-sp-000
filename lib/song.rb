class Song 
  
  attr_accessor :name, :artist
  @@all = []
  @@songs = []
  
  
def initialize(name)
  @name = name
  @@songs << self
  save
end 

def save
  @@all << self
end

def self.all 
  @@all
end 

def artist_name 
  if artist 
    return artist.name
  end
end

end