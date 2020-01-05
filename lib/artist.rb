#require 'pry'

class Artist
    attr_accessor :name, :songs

    #@@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
       @songs << song  #add song to list of songs under artist name
       song.artist = self  #allow for reverse look up
       #@@song_count +=1    #increase song count by 1
    end

    def add_song_by_name(name)
      song = Song.new(name)  #creats a new instance of a song using the input name
      @songs << song  #add song to list of songs under artist name
      song.artist = self  #allow for reverse look up
      #@@song_count +=1    #increase song count by 1
    end

    def self.song_count
      Song.all.length
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end
end
