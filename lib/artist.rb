class Artist
  attr_accessor :name, :songs
  
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    @@song_count
  end

  def self.song_count_increment
    @@song_count += 1
  end

end
