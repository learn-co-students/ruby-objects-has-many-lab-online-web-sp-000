class Song
  attr_accessor :name, :artist, :artist_name
  @@all = []
  def initialize(name)
    @name = name
    @@all<<self
  end
  def self.all
    @@all
  end
  def artist_name
    if artist == nil
      puts nil
    else
   self.artist.name
 end
 end
  def song_count
    self.count
  end
end
