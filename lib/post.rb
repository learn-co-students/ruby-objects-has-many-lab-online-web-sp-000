class Post 
  
  attr_accessor :author, :title
  
  @@all = []
  
  
 def initialize(title)
   @author = author
   @title = title
    save
    end
    
  def save
    @@all << self
  end 
 
  def self.all 
   @@all 
  end

end