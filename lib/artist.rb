require 'pry'
class Artist 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    
    @name = name
    @@all << self 
    
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self } 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
   
  def add_song_by_name(name)
    song = Song.new(name)  
    song.artist = self 
  end 
  
  def song_count 
    Song.self.all 
  end 
  


end 