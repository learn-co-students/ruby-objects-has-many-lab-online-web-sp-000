class Song
  attr_accessor :name, :artist
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
  # def artist_name=(name)
  #   # if (self.artist.nil?)
  #   #   self.artist = Artist.new(name)
  #   # else
  #   #   self.artist.name = name
  #   # end
  # end
  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end
end
