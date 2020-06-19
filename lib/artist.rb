require "pry"
class Artist
  
  attr_accessor :name, :songs, :song_counter
  
  @@song_counter = 0
  def initialize (name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs 
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
    @@song_counter+=1
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_counter+=1
  end
  
    
  def self.song_count
    @@song_counter
  end
  
end