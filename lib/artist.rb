require "pry"
  class Artist 
  attr_accessor :name, :artist_songs
  @@all_artists = [] 
  
  def self.all
    @@all_artists
    binding.pry
  end 
      
  def initialize(artist)
    @name = artist 
    @artist_songs = []
    @@all_artists << self
  end 
  
  def add_song(song)
     song.artist = self 
    @artist_songs << song 
  end
  
  def add_song_by_name(song)
     song = Song.new(song)
     song.artist = self 
    @artist_songs << song 
end 
  
  def songs 
    @artist_songs
  end
  
  def self.song_count 
    total = 0
@@all_artists.uniq.each do |artist|
  total += artist.artist_songs.count
end 
    total
  end 
end