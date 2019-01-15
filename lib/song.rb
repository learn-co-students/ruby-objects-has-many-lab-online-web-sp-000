class Song
  attr_accessor :name, :genre, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def artist_name
    if (@artist != nil)
      @artist.name
    else
      nil
    end
  end
end
