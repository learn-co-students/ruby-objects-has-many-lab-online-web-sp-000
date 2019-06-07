class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    Song.all << song
    song.artist = self
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    Song.all << song
    song.artist = self
  end
  
  # Artist.song_count
  def self.song_count
    Song.all.uniq.count
  end 
    
end