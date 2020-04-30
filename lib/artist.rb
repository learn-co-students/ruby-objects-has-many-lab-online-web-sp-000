class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(name)

  end

  def add_song_by_name(name)

  end

  def self.song_count
    @songs.length

  end

end
