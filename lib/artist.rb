class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
    
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def songs
    @songs = Song.all.select {|song| song if song.artist == self}
    @songs
  end
  
  def self.song_count
    Song.all.count
  end
  
end