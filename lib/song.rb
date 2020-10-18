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

  def self.all
    @@all
  end

  def artist_name
    if !self.include?(self.artist.name)
      nil
    else
      self.artist.name
    end
  end

end
