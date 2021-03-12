class Song

  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
  self.artist.name  if artist
  end

  def self.song_count
  Artist.all.count
  end

end
