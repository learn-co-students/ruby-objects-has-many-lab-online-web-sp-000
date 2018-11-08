class Artist

attr_accessor :name

@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
