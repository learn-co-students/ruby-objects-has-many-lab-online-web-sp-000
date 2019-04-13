class Artist
  attr_accessor :name, :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@songs << song
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    s = Song.new(name)
    s.artist = self
    @@songs << s
    @songs << s
  end

  def self.song_count
    @@songs.length
  end
end
