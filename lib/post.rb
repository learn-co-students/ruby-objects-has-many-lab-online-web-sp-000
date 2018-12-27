class Post 
  attr_accessor :title, :author 
  
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all << self 
    
  end 
  
  def self.all 
    @@all 
    
  end 
  
  def author 
    @author 
  end 
  
  def author_name
    @author = author
    if author == nil 
      return nil 
    else
    return author.name
  end 
    
  end
  
end 
    