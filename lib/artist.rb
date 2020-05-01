class Artist 
  
  attr_reader :name
  
  
  
  def initialize(name) 
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(name)
    name.artist = self
  end
  
  def add_song_by_name(name)
    new = Song.new(name)
    add_song(new)
  end
  
  def self.song_count
    Song.all.count
  end

  
  
end