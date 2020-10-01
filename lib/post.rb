class Post 
  
  attr_accessor :author, :title
  
  @@all = []
  @@posts = []
  
 def initialize(name)
   @title = title
    @@posts << self
    save
    end
    
    def save
    @@all << self
    end 
 
 def self.all 
   @@all 
 end

end