require_relative 'song.rb'
require 'pry'

class Artist
attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count {|song| song.artist != nil}
  end
end

# met = Artist.new("Metallica")
# Song.new("Master of Puppets")
# Song.new("Blackened")
# Song.new("Orion")
# Song.new("Battery")
# met.add_song_by_name("Whiplash")
