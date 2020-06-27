class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(songname)
    song = Song.new(songname)
    song.artist = self
    @@song_count += 2 
  end

  def self.song_count
    @@song_count
  end
  
  def songs
    Song.all.select do |song| 
      song.artist == self
    end
  end
  
end