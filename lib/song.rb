class Song
  attr_accessor  :name, :artist, :title
  @@all = []


  def initialize(name)
    #@title = title

    @name = name

  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def all
    @@all
  end

end
