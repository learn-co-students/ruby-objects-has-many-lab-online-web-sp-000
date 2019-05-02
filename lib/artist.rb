class Artist
  attr_accessor :name, :song
  @@all_songs = []
  def initialize(name)
    @name = name
    @songs = []
    @@all_songs << []
  end
  def add_song (song)
    @songs << song
    song.artist = self
  end
  def add_song_by_name (song)
    song = Song.new(song)
    @songs << song
    song.artist = self
  end
  def songs
    @songs
  end
  def self.song_count
    @@all_songs.length
  end
end
