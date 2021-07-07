class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def add_song(song_name)
    song_name.artist = self

    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist
    @@song_count += 1
  end

  def self.song_count
    Song.all.count
  end

end

#The way I like to think of it is that the class is a blue print, and the instnace is the house built
#from that blue print. We can have multiple houses of that exact type, that all follow that same outline
#, and have the same properties
