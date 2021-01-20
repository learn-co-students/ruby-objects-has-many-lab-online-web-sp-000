class Artist

    attr_accessor :name
    @@song_count = 1

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def add_song(song)
    @@song_count += 1
    Song.all << song
    song.artist = self
  end

  def add_song_by_name(name)
    @@song_count += 1
    song = Song.new(name)
    song.artist = self
    Song.all << song
    song
  end

  def self.song_count
    @@song_count
  end


end