require "pry"

class Artist
  attr_accessor :name, :artist
  
  @@song_count = 0

  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count
  end
  
end

# Artist .song_count is a class method that returns the total number of songs associated to all existing artists
