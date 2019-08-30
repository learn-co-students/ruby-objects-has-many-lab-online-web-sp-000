class Artist
  attr_accessor :name

   @@song_count = 1

   def initialize(name)
    @name = name
    @songs = []
  end

   def self.song_count
    @@song_count
  end

   def songs
    Song.all.select {|word| word.artist == self}
  end

   def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

   def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
end
