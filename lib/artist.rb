class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    #find number of songs per artist
    #Iterate through @@all
    #Increment count for each song associated to artist
    #return count
    #count = 0
    #Song.all.each do |song|
    #  if song.artist
    #    count +=1
    #  end
    #end
    #count
    Song.all.count {|song| song.artist}
  end

end
