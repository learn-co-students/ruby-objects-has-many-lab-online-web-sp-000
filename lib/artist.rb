class Artist 
  attr_accessor :name
  def initialize(name)
    @name = name
  end 
  
  def add_song(new_song)
    new_song.artist = self
  end
  
  def songs
    return Song.all.select{|song| song.artist == self}
  end
  
  def self.song_count
    return Song.all.length
  end
  
  def add_song_by_name(new_name)
    add_song(Song.new(new_name))
  end
    
end