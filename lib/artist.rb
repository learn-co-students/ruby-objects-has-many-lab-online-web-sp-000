class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.filter{|s| s.artist == self}
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    total = 0
    @@all.each{|a| total += a.songs.count }
    total
  end
end
