class Song
attr_accessor :name, :artist
@@all = [] #this object is responsible for holding an array of all song instances that exist

def initialize(name)
  @name = name
  save
end

def save
  @@all << self #pushing this song into our array of all songs
end

def self.all
  @@all
end

def self.name
  @name
end

def self.artist
  self.artist
end

def artist_name
  if artist
      self.artist.name
    else
      nil
    end
end

end #end of class
