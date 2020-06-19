class Artist

attr_accessor :name, :songs

  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs<<song
    song.artist=self
    @@all<<song
  end

  def add_song_by_name(name)
    song=Song.new(name)
    @songs<<song
    song.artist=self
    @@all<<song
  end

  def self.song_count
    @@all.count
  end

end
