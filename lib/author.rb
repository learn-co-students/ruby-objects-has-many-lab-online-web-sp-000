class Author 
   
  attr_accessor :name 
  attr_reader :posts
  
  @@post_count = 0 
  
  def self.post_count
    @@post_count
  end
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(post)
    @posts << post 
    post.author = self
    @@post_count += 1 
  end 
  
  def add_post_by_title(post_name)
    post = Post.new(post_name)
    self.add_post(post)
  end
  
  
  
end