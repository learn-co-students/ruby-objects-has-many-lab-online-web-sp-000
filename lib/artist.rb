require 'pry'
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    newsong = Song.new(song)
    add_song(newsong)
  end

  def song_count=
    #Song.all.length
    binding.pry
    1
  end

end
