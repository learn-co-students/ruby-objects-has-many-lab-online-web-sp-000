class Author 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @writings = []
  end
  
  def add_post(post)
    @writings << post
    post.author = self
  end 
  
  def add_post_by_title(post)
    new_post = Post.new(post)
    @writings << new_post
    new_post.author = self
  end 
  
  def posts 
    Post.all
  end 
  
  def self.post_count
    Post.all.length
  end
  
end