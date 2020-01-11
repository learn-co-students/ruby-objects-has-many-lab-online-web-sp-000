class Song
  # @@all = []
  attr_accessor :title, :artist
  def initialize(title)
    @title = title
    # @artist = artist
    # @@all << self
  end
  # def self.all
  #   @@all
  # end
  def artist= (artist)
    @artist = artist
    artist.songs << self
  end
end
