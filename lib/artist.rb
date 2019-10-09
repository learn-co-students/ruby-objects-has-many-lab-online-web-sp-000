#has many songs
#method that returns a collection of all songs that belonged to artist

class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
    

end