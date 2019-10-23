class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @artist = nil
  end
  
  def self.all
    @@all
  end
  def author_name
    return nil if @artist.nil?
    @artist.name
  end
end