class Artist
  attr_accessor :name, :songs

  ARTISTS = []

  def initialize(name)
    @name = name
    @songs = []
    ARTISTS << self
  end

  def add_song(song)
    @songs << song
    song.add_artist(self)
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.add_artist(self)
    @songs << new_song
  end

  def self.song_count
    ARTISTS.inject(0) { |sum, artist| sum + artist.songs.size }
  end
end
