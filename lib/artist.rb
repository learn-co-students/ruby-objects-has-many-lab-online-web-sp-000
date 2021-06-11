#Complete artist class that is connected to the song class

class Artist

  @@artists = []
  attr_accessor :name

    def initialize(name)
      @name = name
      @@artists << self
    end

    def self.all
      @@artists
    end

    def songs
      Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
      song.artist = self
    end

    def add_song_by_name(song_name)
      song = Song.new(song_name)
      add_song(song)
    end

    def self.song_count
      Song.all.count
    end



end
