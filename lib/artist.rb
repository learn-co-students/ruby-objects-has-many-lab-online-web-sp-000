class Artist 
  
  attr_accessor :name 
  attr_reader :songs
  
  @@song_count = 0 
  
  def self.song_count
    @@song_count
    
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    @@song_count += 1 
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end
  
end