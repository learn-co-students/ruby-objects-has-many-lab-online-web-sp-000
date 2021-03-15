class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize (name)
    @name = name
    @@all << self #not using name here, using self to shovel whole instance
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name if artist # adding if to return nil if song has no artist
  end

end

# learn spec/song_spec.rb
