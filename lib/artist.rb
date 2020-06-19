class Artist
  attr_accessor :name
  attr_reader :songs
  @@songs = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
    @@songs += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@songs
  end
end
