class Artist
attr_accessor :name
@@all = []

def initialize (name)
@name = name
@@all << self
end



def add_song(song)
song.artist = self

end

def add_song_by_name (name, genre = nil)
song = Song.new(name)
add_song(song)

end

def songs
  Song.all.select {|song| song.artist == self}
end

def self.song_count
  counter = []
Song.all.each {|song| counter << song.artist != nil  }
counter.length
end


end
