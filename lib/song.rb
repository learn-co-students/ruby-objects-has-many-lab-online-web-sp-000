class Song
  attr_accessor :name, :artist_name

  @@all = []

  def initialize(name)
    @name = name
  end

  def all?
    @@all
  end
end
