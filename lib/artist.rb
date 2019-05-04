class Artist
  attr_accessor :name
  
  @@artists = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
  end
  
  def self.song_count
    song_count = 0
    @@artists.each do |artist|
      song_count += artist.songs.count
    end
    song_count
  end
  
end