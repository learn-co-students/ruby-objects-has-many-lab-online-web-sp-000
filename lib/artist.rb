class Artist

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end
 
    @@songs = []
    
    def songs
        @@songs
    end
    
    def add_song(song)
        @@songs << song
        song.artist = self
    end
    
    def add_song_by_name(name)
        n = Song.new(name)
        add_song(n)
    end

    def self.song_count
        @@songs.size
    end

end
