class Song
  attr_accessor :name, :artist

  @@all =[]

  def initialize(name)
    @name = name
    # Song #new pushes new instances into a class variable called @@all upon initialization
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
