class Artist
attr_accessor :name


  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    #we take the song's instance method #artist (buldt thru attr_accessor) to set the artist to self
    #this is enough that when we we search the artist's songs we find this new song.
    #when song is created, it's already saved to the @@all array
  end

  def add_song_by_name(name)
    song = Song.new(name)
    #context of use: Rihanna.add_song_by_name("werk")
    add_song(song)
    #somethow this is not working yet
    #on the Song class's side, it also doesn't seem to have associated the artist with the song
    #yet add_song is working properly, supposedly
  end


  def self.song_count #classmethod, count all songs of all artist_spec
    Song.all.length
  end


  def songs
    Song.all.select do | song |
      song.artist == self
    end
    #return array of songs of the artist. self = the artist instance
  end


end
