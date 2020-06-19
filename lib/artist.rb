require "pry"
class Artist
  attr_accessor  :name, :songs, :genre
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

#  binding.pry
  def add_song(song)
      @songs << song
      song.artist = self
      @@song_count += 1
end

  def add_song_by_name(var)
    song = Song.new(var)
    self.songs<<song
    song.artist = self
    @@song_count += 1
  end

def self.song_count
  @@song_count
end


#  end





end
