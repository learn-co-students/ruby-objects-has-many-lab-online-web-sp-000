class Artist
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  
  
  
  def self.song_count
    counter = 0
    
    @songs.each do |songs|
      counter += 1
      
      
    end
    counter
  end
  
  
end

# Artist .song_count is a class method that returns the total number of songs associated to all existing artists
