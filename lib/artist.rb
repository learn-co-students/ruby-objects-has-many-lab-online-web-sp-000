require 'pry'

class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        # binding.pry
        song.artist = self
    end

    def add_song_by_name(name)
        # binding.pry
       song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        Song.all.count
    end

    def self.all
        @@all
    end

end