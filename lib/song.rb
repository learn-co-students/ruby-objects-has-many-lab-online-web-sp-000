class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    save

  end

  def save
    @@all << self
  end

  def artist_name
    self.artist.name
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      return nil
      else
        self.artist.name
      end
    end
end
