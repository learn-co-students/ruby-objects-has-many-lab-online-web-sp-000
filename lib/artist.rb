class Artist
  attr_accessor :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres                        #=> This is how the other two
    self.songs.collect do |song|    #=> classes talk to each other
      song.genre
    end
  end
end
