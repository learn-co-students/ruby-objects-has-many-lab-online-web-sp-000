

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name_obj = Song.new(song_name)
    add_song(song_name_obj)
  end

  def self.song_count
    Song.all.count
  end
end
