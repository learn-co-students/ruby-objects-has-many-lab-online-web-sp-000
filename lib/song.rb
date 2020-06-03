class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        artist.name if artist
    end

    def self.all
        @@all
    end

end
