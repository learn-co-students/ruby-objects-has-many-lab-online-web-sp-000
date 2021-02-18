require_relative './song.rb'
require 'pry'

class Artist
    
    attr_accessor :name, :song
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    #getter method
    def self.all
        @@all
    end

    def songs
        Song.all.select do |s|
            s.artist == self
        end    
    end

    def add_song(song)
        # Song << song
        song.artist = self
    end

    def add_song_by_name(song)
        song = Song.new(song)
        add_song(song)
    end

    def self.song_count
        Song.all.size
    end

end
