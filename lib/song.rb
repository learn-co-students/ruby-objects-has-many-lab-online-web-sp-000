require "pry"
class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def artist=(name)
    @artist = name
    name.songs << self
  end
  def artist
    @artist
  end

  def song_count
    @@all.length
  end

  def self.all
    @@all
  end
end
