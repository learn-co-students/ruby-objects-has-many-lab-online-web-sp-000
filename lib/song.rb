class Song

  attr_accessor :name, :artist                      #BELONGS TO name/artist attributes for our songs
  @@all = []                                       #class variable set to an array. Our list of all "THIS"

  def initialize(name)                #new is initialized with argument for name
    @name = name                      #HAS A name
    @@all << self                     #pushes new instances (self) in our class variable upon initialization
  end

  def self.all
    return @@all                        #returns the array of all post instances that have been created
  end

  def artist_name
    artist.name if artist              # #boolean condition created inside of its own method. returns the instance of an artists name
  end
end
