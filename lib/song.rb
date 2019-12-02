class Song
  attr_accessor  :name, :artist, :title
  @@all = []


  def initialize(name)
    #@title = title

    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.all
    @@all
  end

  def artist_name
    unless self.artist == nil
    @artist.name
    end
  end



end
