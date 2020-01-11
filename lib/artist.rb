require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song (song)
    @songs << song
    new_song.artist = self if song.artist != self
  end
end
