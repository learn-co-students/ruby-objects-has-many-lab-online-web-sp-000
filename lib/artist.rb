class Artist
attr_accessor :name
@@song_count = 0

def initialize(name)
  @name = name
  @songs = [] #artist initialized with array of empty songs
end

def add_song(song)
  @songs << song
  #we need to now tell the SONG that it belongs to the ARTIST
  song.artist = self
  @@song_count += 1
end

def songs
  Song.all.select {|song| song.artist == self }
end

def add_song_by_name(name)
  song = Song.new(name)
  add_song(song)
end

def self.song_count
  @@song_count
end

end #end class
