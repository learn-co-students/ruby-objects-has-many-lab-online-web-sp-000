class Artist
  attr_accessor :name
  def initialize(name)
    @name=name
  end

  def songs
    Song.all.select {|song| song.artist==self}
  end

  def add_song(song)
    song.artist=self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    Song.all.count

  end



end
