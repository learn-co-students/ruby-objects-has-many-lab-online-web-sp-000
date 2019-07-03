class Artist 
  attr_accessor :name
    @@total = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@total += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
     @@total += 1
  end
  
  def self.song_count
    @@total
  end
  
end 
