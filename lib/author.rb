class Author  
  
  attr_accessor :name, :post
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  # def add_post_by_name(post, title)
    
  def self.post_count
    Post.all.count 
  end
  
end