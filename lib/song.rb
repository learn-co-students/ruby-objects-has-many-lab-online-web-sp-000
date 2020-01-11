#rspec ./spec/song_spec.rb --f-f

class Song
  attr_accessor :title, :artist, :name
  @@all = []
    def initialize(title)
      @title = title
      @name = title
      @@all << self
    end

    def artist=(artist)
      @artist = artist
      artist.songs << self
    end

    def artist_name
      if !self.artist
        return nil
      else
        self.artist.name
      end
    end

    def self.all
      @@all
    end

end
