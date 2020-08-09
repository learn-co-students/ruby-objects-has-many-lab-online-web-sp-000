class Artist

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
  end

  def add_song_by_name(songTitle)
    createdSong = Song.new(songTitle)
    @songs << createdSong
  end

  def self.song_count
    total = @songs.length - 1
    return total
  end

end
