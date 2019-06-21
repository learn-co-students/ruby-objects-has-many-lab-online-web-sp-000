class Artist
    attr_accessor :name

     @@allsongs=[]

    def initialize(name)
        @name=name
        @songs=[]
        @@allsongs<<self
    end

    def songs
        @songs
    end
    
    def add_song(song)
        @songs<<song
        song.artist=self
    end

    def add_song_by_name(name)
        song=Song.new(name)
        @songs << song
        song.artist=self
    end

    def self.allsongs
        @@allsongs
    end

    def self.song_count
        Song.all.count
    end
end