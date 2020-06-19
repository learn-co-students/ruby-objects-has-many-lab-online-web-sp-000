class Song
  attr_accessor :title, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def name
    @title
  end

  def artist_name
    if self.artist == nil
       nil
    else
      self.artist.name
    end
  end

end
