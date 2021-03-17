class Artist
  attr_accessor :name, :genre
  
  def initialize(name)
    @name = name
  end
  
  def add_song(new_song)
    new_song.artist = self
  end
  
  def add_song_by_name(new_song)
    song = Song.new(new_song)
    add_song(song)
  end
  
  def name
    @name
  end
  
  def songs
    Song.all.select { |song| song.artist == self}
  end
  
  def self.song_count
    Song.all.length
  end
end