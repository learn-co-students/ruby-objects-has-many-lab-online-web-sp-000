class Artist
  @@song_count = 0
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@song_count += 1
  end
  
  def name
    @name 
  end
  
  
  
  def add_song(song)
    song.artist = self
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
end