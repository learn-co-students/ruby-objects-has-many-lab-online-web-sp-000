require 'pry'
class Artist
    attr_accessor :name, :artist, :songs

    def initialize(name)
        @name = name
        @songs = []
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def add_song(song)
        newSong = Song.new(song)
        song.artist = self
    end
    def add_song_by_name(song)
        newSong = Song.new(song)
        newSong.artist = self
    end
    def self.song_count
        binding.pry
        Song.all.count
    end
end