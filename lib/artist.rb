require 'pry'
class Artist 
  attr_accessor :name 
  def initialize(name)
    @name = name 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
    # binding.pry
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def add_song_by_name(song_name)
    cancion = Song.new(song_name)
    cancion.artist = self 
  end 
  
  def self.song_count
    Song.all.count
  end 
  
end 