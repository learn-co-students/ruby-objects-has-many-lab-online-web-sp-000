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
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def author_name
    self.author ? self.author.name : nil
  end
  
end