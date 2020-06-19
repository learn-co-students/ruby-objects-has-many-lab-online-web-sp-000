class Artist
  attr_accessor :name, :songs
  
  @@song_count = []
  
  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_count << song
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    self.songs << song
    @@song_count << song
  end
  
  def self.song_count
    @@song_count.length
  end
end