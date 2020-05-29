class Song
attr_accessor :name, :artist

@@all = [ ]

def initialize(name)
@name = name
@@all << self #refers to the instance
end

#.all reffers to class variable @@all, returns array of all songs
def self.all #self is referring to the class Song and not an instance of a song. outside of the scope of the method.
@@all
end
#song.all would return to all instances of songs
#song.all would still work. self is a better way, to not use the name of the class Song

def artist_name #find out the artist name for that song.
  if @artist == nil #if song doesn't have an artist
  return nil #return nil
else #if song does have an artist
@artist.name #call and return artist name
  end
 end

end


#to comment out multiple lines: Highlight, command, /
