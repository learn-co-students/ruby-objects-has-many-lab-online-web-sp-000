class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist = self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
