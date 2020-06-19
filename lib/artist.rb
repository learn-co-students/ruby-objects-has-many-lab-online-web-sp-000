require 'pry'

class Artist
  attr_accessor :name
  
  @@songs = []
   
  
  def initialize(name)
    @songs = []
    @name = name 
    
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    
    @songs.each do |song|
      @@songs << song
    end
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    
    @songs.each do |song|
      @@songs << song
    end
    
  end 
  
  def songs 
    @songs
  end 
  
  def self.song_count
   
    @@songs.count

  end
end   
=begin 

=end 
class Song
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
 def self.all
   @@all
 end
 
 def artist_name
   if artist == nil 
   else 
    self.artist.name
  end 
 end 

end

=begin

    
=end 