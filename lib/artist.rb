class Artist
  attr_accessor :name, :song
  def initialize(name) #works
    @name = name
    @songs = song
    @songs = []
  end
  def name #works
    @name
  end
  def songs #works
    Song.all.select {|song| song.artist == self}
  end
  def add_song(song) #works
    @songs << song
    song.artist = self
  end
  def add_song_by_name(name)
    singer = Song.new(name)
    add_song(singer)
  end
  def self.song_count
  Song.all.count #{|song| song.artist == self}
  end

end
