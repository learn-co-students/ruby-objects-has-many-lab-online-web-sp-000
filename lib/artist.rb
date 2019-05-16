class Artist

  attr_accessor :name
@@songs_count = 0


  def initialize(name)
    @name = name
    @songs = []
  end



  def add_song(song)
    self.songs << song
    song.artist = self
    @@songs_count += 1
  end


  #
      def add_song_by_name(name)
      song = Song.new(name)
      self.songs << song
      song.artist = self
      @@songs_count += 1
    end

    def songs
      @songs
    end

    def self.song_count
      @@songs_count
    end


end

class Song
  attr_accessor :name, :artist

@@all = []

def initialize(name, artist=nil)
  @name = name
  @artist = artist
  @@all << self
end

def artist_name
  if self.artist
    self.artist.name
  else
    nil
  end
end

def self.all
  @@all
end

end
