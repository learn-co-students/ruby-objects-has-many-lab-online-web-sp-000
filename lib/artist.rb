class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def songs 
    @songs
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
  end
  
  def self.song_count
    @@all.collect {|artist| artist.songs}.flatten.count
  end
end