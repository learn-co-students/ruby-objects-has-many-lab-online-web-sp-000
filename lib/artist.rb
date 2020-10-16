class Artist
  attr_accessor :name


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.song_count
    Song.all.count
  end
end