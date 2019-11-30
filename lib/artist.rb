require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0
  @@artists = []

  def self.all
    @@artists
  end

  def self.total_artists
    @@artists.size
  end

  def self.song_count
  #  binding.pry
  self.all.collect {|a|a.songs}.flatten.count


end

  def initialize(name)
    @@artists << self
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
 end

  def add_song_by_name(song_name)
  #  binding.pry
    song = Song.new(song_name)
    self.add_song(song)
  end

  def song_count
    @@song_count = song_count
  end

 end
