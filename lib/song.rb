<<<<<<< HEAD
require 'pry'

=======
>>>>>>> 8fa333f537bdf86a9d1129e16360d25aed880f30
class Song 
  attr_accessor  :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
<<<<<<< HEAD
  def artist=(artist)
    @artist = artist
  end
  
  def artist_name
=======
  def artist 
    @artist = artist
    atrist.add_song(self) unless songs.artist.include? (self)
  end
  
   def artist_name
>>>>>>> 8fa333f537bdf86a9d1129e16360d25aed880f30
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
  
end