class Artist

  attr_accessor :name
  @@songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@songs << song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    @@songs.length
  end

end
