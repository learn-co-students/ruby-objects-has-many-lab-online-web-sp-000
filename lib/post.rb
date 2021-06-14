class Post 
  
  @@all = []
  
  attr_accessor :title, :author 
  
  def initialize(title, author = nil)
    @title = title 
    @author = author
    save
  end
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def author_name
    if self.author 
      self.author.name 
    else 
      nil
    end
  end
    
end