class Song
  attr_accessor :artist, :name
    @@all = [] #works
  def initialize(name) #works
    @name = name
    @@all << self
  end
  def self.all #works
    @@all
  end
  def name=(name) #works
    @name = name
  end
  def artist=(artist) #works
    @artist = artist
  end
  ##################################
  def artist_name#(name)
    if self.artist == nil#(self.artist.nil?)
  nil  #  self.artist = Artist.new(name)
    else
      self.artist.name #= name
    end
  end
end
