class Artist
  attr_accessor :name, :songs, :song_count

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) #takes in the argument of a song name, creates a new song with it and associates the song and artist
    song.artist = self
  end

  def songs #has many songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end

end
