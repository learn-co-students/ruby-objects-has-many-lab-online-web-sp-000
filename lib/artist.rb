require "song.rb"

class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    songs << song
  end
  
  def add_song_by_name(name)
    self.add_song(Song.new name)
  end
  
  def self.song_count
    Song.all.size
  end
end