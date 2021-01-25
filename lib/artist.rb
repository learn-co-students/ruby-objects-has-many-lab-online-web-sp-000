class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@all.collect {|e| e.songs}.flatten.compact.uniq.length
  end

end
