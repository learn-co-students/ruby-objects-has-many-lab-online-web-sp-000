class Post 
  attr_accessor :title, :author 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(title)
    @title = title 
    @author = "unknown"
    @@all << self 
  end 
  
  def author_name 
    if @author == "unknown"
      nil 
    else 
      @author.name 
    end 
  end 
  
end 