class Post 
  attr_accessor :title 
  @@all = []
  def initialize(title)
    @title = title 
    
  end 
  
  def new 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 

end 