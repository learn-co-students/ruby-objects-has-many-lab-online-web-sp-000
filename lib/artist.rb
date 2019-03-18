class Artist 
  attr_accessor :name, :songs
  
  @@artists = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@artists << self
  end 
  
  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
  end 
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
  end 
  
  def self.song_count
    count = 0 
    @@artists.each do |artist|
      count += artist.songs.length 
    end 
  count
    
  end 
  
end 