class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    case self.artist
    when nil
      return nil
    else
      return self.artist.name
    end
  end

end
