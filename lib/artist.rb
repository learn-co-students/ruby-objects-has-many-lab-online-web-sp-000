class Artist
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name   
    @song = []
  end
    
  def self.all
    @song
  end
  
  def add_song(song)
    @song << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @song << song
    song.artist = self
  end

  def songs
    @song 
  end

  def self.song_count
    Song.all.count
  end
end