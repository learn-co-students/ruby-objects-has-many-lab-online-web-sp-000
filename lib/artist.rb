require 'pry'

class Artist

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs

    @songs
  end

  # add_song takes in an argument of a song and associates that song with the artist by
  # telling the song that it belongs to that artist
  def add_song(song)
    @songs << song
    song.artist = self
  end


#add_song_by_name takes in an argument of a song name, creates a new song with it
# and associates the song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end


  # Artist .song_count is a class method that returns the total number of songs associated to all
  # existing artists
  def self.song_count
   Song.all.count
  end

end
