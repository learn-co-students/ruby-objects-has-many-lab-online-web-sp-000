class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name =name
    self.class.all << self
  end

  def artist_name
    self.artist.name rescue nil
  end

  def self.all
    @@all
  end



end
