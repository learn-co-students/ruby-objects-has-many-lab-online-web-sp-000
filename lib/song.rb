class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    all
  end

  def artist_name
    if !@artist
    else
      @artist.name
    end
  end
  def all
    @@all << self
  end
  def self.all
    @@all
  end

end
