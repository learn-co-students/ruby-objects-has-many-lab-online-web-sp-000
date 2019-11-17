class Song
attr_accessor :name, :artist, :artist_name
@@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
