require "pry"
class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
#binding.pry
  @@all << self
  end

def self.all
  @@all
end

def artist_name
  if self.artist
    self.artist.name
  else
    return nil
  end
end

end
