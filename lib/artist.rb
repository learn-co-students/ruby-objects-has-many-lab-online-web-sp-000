class Artist

  @@songs = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)

  end

  def add_song_by_name(name)
    @name = name
    @@songs << @name
  end

  def song_count
  end
end
