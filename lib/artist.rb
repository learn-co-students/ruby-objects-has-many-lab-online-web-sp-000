require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    # binding.pry
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.length
  end

  def songs
    @songs
  end

end
