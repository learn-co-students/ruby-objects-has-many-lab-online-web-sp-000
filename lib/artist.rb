class Artist
  
  attr_accessor :name # allows access to artist through artist.name
  
  def initialize(name) #creates new artist instance trhrough artist name = Artist.new
    @name = name
  end
  
  def add_song(song) #adds a song to a specific artist instance through
    song.artist = self # artist.add_song(song)
  end
  
  def add_song_by_name(name) #creates a new instance of the Song class
    song = Song.new(name)    # with the artists name through 
    add_song(song)            # artist.add_song_by_name(name)
  end
  
  def songs #returns all songs for a specific artist
    Song.all 
  end
  
  def self.song_count #counts all the songs for a specific artist
    Song.all.count
  end
end