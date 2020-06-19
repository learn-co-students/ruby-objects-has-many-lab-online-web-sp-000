class Artist
  attr_accessor :name

  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_count << song
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
    self.songs << song
    @@song_count << song
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count.length
  end

end
