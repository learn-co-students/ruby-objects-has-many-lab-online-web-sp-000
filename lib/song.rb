class Song

  attr_accessor :name, :artist # The artist attribute present in the 'Song' class is equal to the instance of the 'Artist' class.

  @@all = [] # Class variable that is an empty array.

  def initialize(name) # As we initliaze each song, we capture it's name.
    @name = name
    @@all << self # Then, we take each instance and push it into our class variable, creating a list of songs.
  end

  def self.all # Like the '@@count' in the 'Artist' class, '@@all' will be returned as an array of songs.
    @@all
  end

  def artist_name # This method connects our 'artist' attribute to the instance of the 'Artist' class.
    @artist == nil ? nil : @artist.name # Checks to see if our song has an artist's associated with it. If so, it returns the name of that artist.
  end

end
