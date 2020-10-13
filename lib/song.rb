class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def artist_name(name = nil)
  if self.artist
    self.artist.name
  end
end

end
