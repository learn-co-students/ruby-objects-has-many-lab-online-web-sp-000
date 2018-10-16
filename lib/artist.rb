require 'pry'

class Artist

  attr_accessor :name, :songs, :song,

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @song = Song.new(song)
    @songs << @song
  end

end
