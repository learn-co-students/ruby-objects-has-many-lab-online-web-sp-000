class Artist
  
  attr_accessor :name, :songs
  @@allSongs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@allSongs
  end

  def songs
    Song.all.each {|i| @songs.push(i) if i.artist == self}
    @songs
  end
  
  def add_song(songObject)
    @songs << songObject
    @@allSongs << songObject
    songObject.artist = self
  end
  
  def add_song_by_name(songNameString)
    newSongObject = Song.new(songNameString)
    @songs << newSongObject
    @@allSongs << newSongObject
    newSongObject.artist = self
  end
    
  def self.song_count
    Song.all.count
  end
end


# adele = Artist.new("Adele")
# adele.add_song_by_name("Hello")
# print Artist.all

