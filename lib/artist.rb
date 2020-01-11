require 'pry'

class Artist
  attr_accessor :name, :songs
  @@songs_count = 0

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@songs_count += 1
    song.artist = self
    song.artist.songs << song
  end

  def add_song_by_name(song_name) #where is name???
    s = Song.new(song_name)
    self.add_song(s)
  end

  def self.song_count
    @@songs_count
  end

end
