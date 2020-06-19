require 'pry'

class Artist
  attr_accessor :name, :song
  @@all = []

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
    @@all << self 
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@all << self
  end

  def self.song_count
    @@all.length
  end

end
