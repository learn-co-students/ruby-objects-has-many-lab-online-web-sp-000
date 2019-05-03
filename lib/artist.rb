class Artist
  attr_accessor :songs, :name
  @@all_songs = []


  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs << song unless @@all_songs.include?(song)

  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@all_songs << song unless @@all_songs.include?(song)
  end

  def self.song_count
    @@all_songs.length
  end

end
