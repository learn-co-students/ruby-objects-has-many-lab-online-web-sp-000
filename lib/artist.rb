class Artist
  
  attr_accessor :name, :songs, :artist
  
 @@song_count = 0
 @@all = []

def initialize(name)
  @name = name
  @songs = []
  @artist = artist
end

def name
  @name
end

def artist=(artist)
  @artist = artist
end

def add_song(song)
  @songs << song
  song.artist = self
  @@song_count += 1
end

def add_song_by_name(name)
  song = Song.new(name)
  @songs << song
  song.artist = self
  @@song_count += 1
end

def self.song_count
  @@song_count
end


end