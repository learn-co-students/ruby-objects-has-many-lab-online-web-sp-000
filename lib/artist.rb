require 'pry'

class Artist
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

  def songs 
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
 end
end