class Artist
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
    @songs << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    Song.all
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end

  def self.song_count
    Song.all.count do |artist|
      artist
    end
  end
end
