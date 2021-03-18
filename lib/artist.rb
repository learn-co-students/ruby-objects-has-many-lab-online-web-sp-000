class Artist
  attr_accessor :name       #instance method, it will operate on the instance of this class and not the class itself.
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song      #has many
    song.artist = self  #belongs to
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
    @@song_count += 1
    song
  end

  def self.song_count
    @@song_count
  end

end
