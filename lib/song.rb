class Song
  attr_accessor :name, :artist
  
  @@songs = []
  
  def initialize(name)
    @@songs << self
    @name = name
  end

end