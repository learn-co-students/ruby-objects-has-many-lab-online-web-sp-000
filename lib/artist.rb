require 'pry'

class Artist

  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def songs
    song.all
  end
  
  def add_song(song)
    # binding.pry
    # telling a song it belongs to that Artist
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song.new(song_name)
    add_song(song_name)
    
  def self.song_count
  end

end