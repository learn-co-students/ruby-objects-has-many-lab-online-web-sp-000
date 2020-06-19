require "pry"

class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs_array = []
  end
  
  def songs
    @songs_array
  end
  
  def add_song(song)
    @songs_array << song
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    @songs_array << song
    song.artist = self
  end
  
  def self.song_count
    song_count = Song.all.length
  end
  
  
  
end

