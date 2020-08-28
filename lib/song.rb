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

  def name
    @name
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end

  def artist
    @artist
  end

end
