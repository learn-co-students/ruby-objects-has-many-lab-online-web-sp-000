class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    track = Song.new(song)
    track.artist = self
    @songs << track
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end


  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    Song.all.length
  end

end
