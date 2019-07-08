class Artist
 attr_accessor :name, :genre
@@count = 0

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
   song.artist = self
   @songs << song
   @@count += 1
end

def add_song_by_name(song)
  song = Song.new(song)
  @songs << song
  song.artist = self
  @@count += 1
end
def songs
  @songs
end

def self.song_count
  @@count
end


end
