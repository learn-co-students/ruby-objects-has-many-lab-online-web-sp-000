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
    self.songs << song
    song.artist = self
    @@all_songs << song
  end

  def add_song_by_name(song)
    self.add_song(Song.new(song))
  end

  def self.song_count
    @@all_songs.length
  end

end
