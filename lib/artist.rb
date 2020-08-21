
require "pry"
class Artist 

    @@all = []


    attr_accessor :name, :songs



    def initialize(name)
        @name = name
        @songs = []
        @@all << self     
    end

    def add_song(song)
        #@songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
        
      end  

   
    def self.song_count
        result = 0
        #binding.pry
       @@all.each do |artist|
        result += artist.songs.length
       end
       result
    end
end





