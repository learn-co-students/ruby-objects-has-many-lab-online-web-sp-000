class Artist
  attr_accessor :name, :songs
  @@number_of_songs = 0
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    @@number_of_songs += 1
    @songs << song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.add_song(song)
  end
  
  def self.song_count
    @@number_of_songs
  end
end