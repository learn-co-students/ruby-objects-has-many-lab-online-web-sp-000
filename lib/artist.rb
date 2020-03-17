<<<<<<< HEAD
require 'pry'

=======
>>>>>>> 8fa333f537bdf86a9d1129e16360d25aed880f30
class Artist

  attr_accessor :name, :songs

<<<<<<< HEAD
=======
  @@song_count = 0

>>>>>>> 8fa333f537bdf86a9d1129e16360d25aed880f30
  def initialize(name)
    @name = name
    @songs = []
  end
<<<<<<< HEAD
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self if song.artist != self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self 
  end

  def self.song_count
    Song.all.length
=======

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
>>>>>>> 8fa333f537bdf86a9d1129e16360d25aed880f30
  end

end