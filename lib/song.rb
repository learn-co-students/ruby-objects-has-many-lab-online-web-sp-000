#A complete Song class which interacts with the Artist class


class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if artist
      artist.name
    end
  end
end
