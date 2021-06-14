class Artist 
  
  @@song_count = 0
  
  attr_accessor :name 
  
  def initialize(name) 
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@song_count += 1 
  end
  
  def self.song_count
    @@song_count
  end
  
end