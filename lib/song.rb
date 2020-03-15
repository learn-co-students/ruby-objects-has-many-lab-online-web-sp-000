class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def artist_name
    artist.nil? ? nil : artist.name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end