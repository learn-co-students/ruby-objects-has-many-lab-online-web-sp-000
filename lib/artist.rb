class Artist
  @@song_count = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist =  self
    @@song_count << self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end

  def self.song_count
    @@song_count.size
  end

  def songs
    @songs
  end

end
