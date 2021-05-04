class Post 
  attr_accessor :author, :post 
  
  
  def initialize(post_name)
    @post_name = post_name
    @@all << self 
  end
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def title 
    @post_name
  end
  
  def author_name
    if author
      self.author.name 
    else
      nil 
    end 
  end 
  
end