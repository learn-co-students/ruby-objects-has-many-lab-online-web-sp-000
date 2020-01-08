class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  # calls on the .all method within the Song class to produce all song instances
  def songs
    Song.all
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    add_song(new_song)
  end

  # class method that returns the total number of songs associated to all existing artists
  def self.song_count
    Song.all.count
  end

end
