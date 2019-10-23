class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select {|item| item.artist == self}
  end
  
  def add_song(song)
    song.artist=self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end
  
  def self.song_count
    count = 0
    @@all.each {|artist|  count += artist.songs.count}
    count
  end
  
end