class Song
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(name)
    @artist = name
    name.songs << self
  end

  def artist
    @artist
  end

  def artist_name
    if @artist == nil
      return nil
    end
    @artist.name
  end

end
