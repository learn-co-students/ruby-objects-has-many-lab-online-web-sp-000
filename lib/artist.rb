require 'pry'

class Artist

  @@allSongs = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@allSongs += 1
    if (song.artist != self)
      song.artist = self
    end
  end

  def add_song_by_name(songTitle)
    createdSong = Song.new(songTitle)
    @songs << createdSong
    @@allSongs += 1
    createdSong.artist = self
  end

  def self.song_count
    @@allSongs
  end


end
