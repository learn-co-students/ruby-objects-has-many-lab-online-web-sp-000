class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    artist_songs = []
    Song.all.each do |song|
      if song.artist == self
        artist_songs << song
      end
    end
    artist_songs
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    count = 0
    Song.all.each do |song|
      if song.artist
        count += 1
      end
    end
    count
  end
end
