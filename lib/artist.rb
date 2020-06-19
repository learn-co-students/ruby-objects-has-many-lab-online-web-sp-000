class Artist
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  def songs
    @songs
  end
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self # thousandmiles.artist = vanessacarlton
    @@song_count += 1
  end
  def self.song_count
    @@song_count
    # return the total number of songs associated with all existing artist_spec
  end
end
