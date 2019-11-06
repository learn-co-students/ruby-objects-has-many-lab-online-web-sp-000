class Song
#Song #name has a name
# Song #artist belongs to an artist
  attr_accessor :name, :artist
 
 # Song @@all is a class variable set to an array
  @@all = []
  
# Song #new is initialized with an argument of a name
#Song #new pushes new instances into a class variable called @@all upon initialization
  def initialize(name)
    @name = name
    @@all << self
  end

#Song .all is a class method that returns an array of all song instances that have been created
  def self.all
    @@all
  end
  
# Song #artist_name knows the name of its artist
#Song #artist_name returns nil if the song does not have an artist
  def artist_name
    artist.name if artist
  end
end
