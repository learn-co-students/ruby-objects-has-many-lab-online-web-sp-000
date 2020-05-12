class Song
    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
    end

    def self.all
        @@all
    end    

    def artist_name
        if (artist != nil)
            return self.artist.name
        else
            return nil
        end            
    end
end