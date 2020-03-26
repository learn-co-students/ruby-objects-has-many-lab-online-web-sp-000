class Song
  attr_accessor :song, :name, :artist, :songs
  @@all = []
def initialize(name)
  @name = name
  # songs = self
  # songs.name = name
  # @@all << songs
  @@all << self
  @artist
end

def self.all
  @@all
end
def artist_name
  if  defined?(@artist.name) == nil
        nil
    else
        @artist.name
    end
 end

end
