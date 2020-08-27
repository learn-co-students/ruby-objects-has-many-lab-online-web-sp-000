class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

end






# UNCOMMENT BELOW TO TEST

# class Song
  
#   attr_accessor :artist, :name
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end
  
#   def artist_name
#     self.artist ? self.artist.name : nil
#   end
  
# end

# lil_nas_x = Artist.new("Lil Nas X")
# old_town_road = Song.new("Old Town Road")
# hello = Song.new("Hello")
# old_town_road.artist = lil_nas_x

# lil_nas_x.add_song_by_name("another song")

# puts hello.artist_name