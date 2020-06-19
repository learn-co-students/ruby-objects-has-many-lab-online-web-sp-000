require 'pry'

class Artist

  attr_accessor :name, :songs, :name, :song_count

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    # binding.pry
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def Artist.song_count
    Song.song_count
  end




end
