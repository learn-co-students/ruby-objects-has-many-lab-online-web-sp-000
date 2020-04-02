class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
