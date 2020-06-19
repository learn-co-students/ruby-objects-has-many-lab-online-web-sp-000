class Artist 
  attr_accessor :name, :songs 
  
  ALL_SONGS = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song) 
    song.artist = self 
    @songs << song
    ALL_SONGS << song
  end 
  def add_song_by_name(name) 
    song = Song.new(name)
    song.artist = self 
    @songs << song  
    ALL_SONGS << song
  end 
  def self.song_count 
    ALL_SONGS.count
  end 
end