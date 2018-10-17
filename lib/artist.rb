require 'pry'

class Artist

  attr_accessor :name, :songs, :artist, :song_name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    # binding.pry
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
  end

  def song_count
  end




end
