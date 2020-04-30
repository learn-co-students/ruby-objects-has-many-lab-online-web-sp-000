class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = Song.new
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name = name
  end

  def artist

  end

  def artist_name

  end

end
