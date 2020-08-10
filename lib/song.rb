class Song

  @@all = []

  def title=(input)
    @title = input
  end

  def name=(input)
    @title = input
  end

  def name
    @title
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def artist=(input)
    @artist = input
    if !(artist.songs.include?(self))
      @artist.add_song(self)
    end
  end

  def artist
    if (@artist != nil)
      @artist
    else
      nil
    end
  end

  def artist_name
    if (@artist != nil)
      @artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
