class Artist

  attr_accessor :name

  @@allsongs = []

  def initialize(name)
    @name = name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    new_song.artist = self
  end

  def self.song_count
    Song.all.size
  end
end