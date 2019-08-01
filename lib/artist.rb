class Artist

   attr_accessor :name             
  @@all = []                       

   def initialize(name)
    @name = name
    @@all << self                   
  end

   def self.all
    return @@all               
  end

   def songs
    Song.all.select do |song|       
      song.artist == self           
    end
  end

   def add_song(song)           
    song.artist = self           
  end
  def add_song_by_name(name)       
    song = Song.new(name)         
    song.artist = self             
  end                               

   def self.song_count
    return Song.all.count           
  end                               
end