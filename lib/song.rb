class Song
  # @@all = []
  attr_accessor :title, :artist
  def initialize(stitle)
    @title = stitle
    # @artist = artist
    # @@all << self
  end
  # def self.all
  #   @@all
  # end
  def artist= (artist)
    artist.songs << self
  end
end