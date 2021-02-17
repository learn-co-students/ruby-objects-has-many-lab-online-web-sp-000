class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    save
  end

def save
 @@all << self
end

def self.all
  @@all
end

def artist_name
if self.artist == nil
  return nil
end
self.artist.name
end

end
