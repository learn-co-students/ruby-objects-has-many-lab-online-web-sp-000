require 'pry'
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
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
    
  def self.song_count
   Song.all.count
   end
  
  #is a class method that returns the total number of songs associated to all existing artists (FAILED - 1)
end