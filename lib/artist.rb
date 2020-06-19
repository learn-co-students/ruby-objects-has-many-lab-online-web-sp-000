class Artist 
  attr_accessor :name
  @@total_songs = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song_name)
    self.songs << song_name
    song_name.artist = self
    @@total_songs += 1
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    song.artist = self
    @@total_songs += 1 
  end
  
  def self.song_count
    @@total_songs
  end
  
end