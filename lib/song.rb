class Song
  # @@all = []
  attr_accessor :title
  attr_reader :artist
  def initialize(title)
    @title = title
  end

  # def self.all
  #   @@all
  # end

  def artist= (artist)
    @artist = artist
    artist.add_song(self) << self unless artist.songs.include?(self)
  end
end
