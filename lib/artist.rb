require 'pry'
class Artist 
  attr_accessor :name, :songs
  @@AllArtists = []
  def initialize(name)
    @name = name 
    @songs = []
    @@AllArtists << self 
  end 
  
  
  def add_song(song)
    song.artist = self
  end 
  
  def add_song_by_name(title)
    title = Song.new(title)
    title.artist = self
  end 
  
  def self.song_count
    counter = 0
    @@AllArtists.each {|artist| counter += artist.songs.length}
    counter
  end 
  
end 