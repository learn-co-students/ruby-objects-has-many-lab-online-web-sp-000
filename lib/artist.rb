class Artist

  attr_accessor :name

  @@all_artists = []

  def initialize(name)
    @name = name
    @songs =[]
    @@all_artists << self
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song (song)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    song_count=0
    @@all_artists.each do |artist|
      array = artist.songs
      song_count += array.length
    end
    song_count
  end

end
