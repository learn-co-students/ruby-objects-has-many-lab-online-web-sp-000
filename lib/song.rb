class Song
attr_accessor :name, :artist, :genre

@@all = []

def initialize (name, genre = nil)
@name = name
@genre = genre
save
end

def save
@@all << self
end


def artist_name
  if self.artist != nil
self.artist.name
  else
     nil
  end
end



def self.all
  @@all
end

end
