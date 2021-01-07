class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
     
  def songs
    Song.all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
end