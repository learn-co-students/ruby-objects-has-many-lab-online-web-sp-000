class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def Song.song_count
    @@all.length
  end

  def Song.all
    @@all
  end


end
