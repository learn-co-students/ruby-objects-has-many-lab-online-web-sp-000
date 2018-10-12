require 'pry'

class Song

  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
    Artist.allsongs << self
  end

  def artist_name
    return artist.name unless !artist
    nil
  end

  def self.all
    @@all
  end
end
