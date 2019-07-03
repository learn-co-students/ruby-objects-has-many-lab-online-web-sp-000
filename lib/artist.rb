class Artist

  attr_accessor :name               #has an accessor for name
  @@all = []                        #class variable = to array

  def initialize(name)
    @name = name
    @@all << self                    #HAS MANY songs (array). We then push all instances onto our class variable upon creation
  end

  def self.all
    return @@all                  #returns our array of all (songs)
  end

  def songs
    Song.all.select do |song|       #HAS MANY songs
      song.artist == self           #SELECT all songs. associates song with the artist together = to self!
    end
  end

  def add_song(song)             #Argument song, the associates that song with the artist. By telling song that it belongs to the artist
    song.artist = self            #self here = the artist... the song BELONGS TO the artist
  end
    #Combines first creating a song, then adding it to a given artist's collection of songs
  def add_song_by_name(name)        #takes in argument name of (song)
    song = Song.new(name)           #creating a new instance of a song
    song.artist = self              #Right here all we're doing is associating the objects its that simple
  end                               

  def self.song_count
    return Song.all.count           #Count method in a class method returns number of songs associated to all existing artists
  end                               #returning total number of songs that have been created. Direct call to our Song class
end
