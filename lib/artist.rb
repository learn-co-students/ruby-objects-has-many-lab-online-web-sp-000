class Artist
  attr_accessor :name
  
  @@all = []
  @@song_count = 0
 
  def initialize(name)
    @name = name
   @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end
  
  def songs 
    Song.all.select {|song| song.artist == self} 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @@all << song
    song.artist = self
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count += 1
  end
end