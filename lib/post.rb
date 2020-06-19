class Post 
  attr_accessor :post, :author 
  
  @@all = []
  
  def initialize(post)
    @post = post 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def title 
    @post
  end
  
  def author_name 
    self.author ? self.author.name : nil 
  end 
  
end 






