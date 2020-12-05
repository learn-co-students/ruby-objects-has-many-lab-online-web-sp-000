class Artist
  attr_accessor :name

  def initialize(name)
    @name = name #=> Initialized with a name
  end

  def add_song(song)
    song.artist = self #=> Passing in a Song object and adding the artist to that object
  end

  def add_song_by_name(name)
    song = Song.new(name) #=> Initializes a Song with a name
    song.artist = self #=> Associates the song and artist
  end

  def songs #=> Returns an array with all songs by specified artist
    Song.all.select { |song| song.artist == self }
  end

  def self.song_count #=> Returns the total number of songs recorded
    Song.all.count
  end
end
