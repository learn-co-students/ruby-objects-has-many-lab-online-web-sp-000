class Artist

  attr_accessor :name               #has an accessor for name

  def initialize(name)
    @name = name
    @songs = []                    #HAS MANY songs (array). The artists' catalogue of songs essentially
  end

  def songs
    @songs
  end

  def add_song(song)             #Argument song, the associates that song with the artist. By telling song that it belongs to the artist
    @songs << song
    song.artist = self            #self here = the artist... the song BELONGS TO the artist
  end
    #Combines first creating a song, then adding it to a given artist's collection of songs
  def add_song_by_name(song)
    song = Song.new(name)           #creating a new instance of a song
    @songs << song                  #adding songs artists collection
    song.artist = self              #Makes sure it collects to a specifc (unique) artist each time
  end

  def self.song_count
    return @songs.length
  
end
