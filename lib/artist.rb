class Artist
  attr_accessor :name, :genre
  @@songs_total =[]
  def initialize(name)
    @name=name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs_total << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    @@songs_total << song
    song.artist = self
  end

  def songs
    @songs
  end
  def self.song_count
    @@songs_total.length
  end
end
