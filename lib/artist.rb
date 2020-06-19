class Artist
  attr_accessor :name, :genre
  @@songs = 0
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@songs += 1
  end
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  def songs
    @songs
  end
  def self.song_count
    @@songs
  end
end
