class Song
  attr_accessor :name, :artist
  :song
  :song2

  @@all = []

  def initialize(name)
    @name = name
    @@all << self     #pushes instances upon initialization
  end

  def self.all
    @@all
  end

  def all
    @@all
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def artist_name
    if @artist
      self.artist.name
    end
  end

end
