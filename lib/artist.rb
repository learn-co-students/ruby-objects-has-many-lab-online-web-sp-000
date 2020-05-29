require 'pry'
class Artist
attr_accessor :name, :songs

def initialize(name)
@name = name
end

#calling self.all from the class Song, will return the array
def songs #where can we get a list of all the songs? The song class. What is holding it? .all
Song.all.select do |song| #<--Song refers to actual class of Song.
song.artist == self #access attribute via song.artist comparing it to the object itself.
end                 #instance of the object itself = self.
end                 #each element represents a song.
                    #select returns an array. == testing for T/F
def add_song(song)
song.artist = self #instance of artist belongs to self, defining it. =
end

def add_song_by_name(song_name)
singer = Song.new(song_name)
add_song(singer)           #assign new song object to an artist
end

def self.song_count
#binding.pry. self => Artist
Song.all.count
end

end

#put a binding pry to know what scope you are in
#put learn --f-f to see less errors
