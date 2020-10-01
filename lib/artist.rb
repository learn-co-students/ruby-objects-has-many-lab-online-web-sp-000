class Artist 

attr_accessor :name, :song

@@songs = []

def initialize(name)
  @name = name
  @song = song
end 
  
def songs
Song.all.select {|song| song.artist == self}
end

def add_song(song)
  song.artist = self
end

def add_song_by_name(name)
  new = Song.new(name) 
  add_song(new)
end

def self.song_count
  Song.all.count
end 
  
end