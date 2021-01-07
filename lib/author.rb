class Author 
  attr_accessor :name, :posts 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    Post.all
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end
  
  def self.post_count
    Post.all.count
  end
end