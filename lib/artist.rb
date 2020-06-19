class Artist
  attr_accessor :name

  @@all_songs = []

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
    @@all_songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def self.song_count
    @@all_songs.size
  end

end
