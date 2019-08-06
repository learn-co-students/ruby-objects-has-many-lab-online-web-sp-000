class Artist
  
  attr_accessor :name, :songs
  
  @@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def name=(name)
  @name = name
end

end