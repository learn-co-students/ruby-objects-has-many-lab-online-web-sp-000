class Song

    @@all =[]

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        # binding.pry
        # if self.artist.name == nil
        #     nil
        # else
        #     self.artist.name
        # end
        artist.name if artist
    end

end