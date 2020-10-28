class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.song_count
    @@all.length
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      return nil
    end
  end

  def self.all
    @@all
  end

end