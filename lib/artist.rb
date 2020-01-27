class Artist
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select{|s| s.artist == self}
  end
  
  def add_song(song)
   
   song.artist = self
   
    #associates "song" with the artist by telling the song it belongs to the artist
  end
  
  def add_song_by_name(song)
    s = Song.new(song)
    s.artist = self
    s.name = song
  #creates a new song with the "song" name and associates the song and artist
  
  end
  
  def self.song_count
    #returns the total number of songs associated to all existing artists
    Song.all.length
  end
  
end