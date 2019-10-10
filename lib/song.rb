#belongs to an artist
#needs to know about all its song instances, a song instance needs to nkow what artist class it belongs to: keep track of all post instances; post instances need to know about artist class

#needs to have a reference to the artist it belongs to (contains :artist)
#needs to have class variable that holds all isntances of every song that's been created in an array
#needs a class method that returns the class variable holding all of these instances

class Song
attr_accessor :name, :artist

  @@all = []
  
  def initialize(name)
    @artist = artist
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def artist_name
    if artist
      artist.name
    end
  end
  
end