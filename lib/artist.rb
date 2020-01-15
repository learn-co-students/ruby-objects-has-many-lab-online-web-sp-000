require 'pry'

class Artist

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    ##binding.pry
    s = Song.new(name)
    add_song(s)
  end

  def self.song_count
    Song.all.count
  end


end
