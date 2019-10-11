class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = 0
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
    song
  end

  def self.song_count
    Song.all.count
  end
end
