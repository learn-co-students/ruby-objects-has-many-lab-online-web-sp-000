class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.song_count
    count = 0
    @@all.each{ |artist| count += artist.songs.count }
    return count
  end

  def songs
    @songs
  end

  def add_song_with_name(name)
    @songs << Song.new(name)
  end
end
