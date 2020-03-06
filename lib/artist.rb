require 'pry'
class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    
  end

  def add_song(song)
    song.artist = self #refers to the artist
  
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song) #song here refers to the line above as an arguement thats being passed to               #the add_song method
    @@song_count +=1
  end

  def songs
    Song.all.select do |song| #selects all songs = to the artist
      song.artist == self     #self refers to the artist in Song.all which is = to @@all                           #defined in the class Song
    end
  end

  def self.song_count
      Song.all.length #Song.all.count would also work here
  end
end