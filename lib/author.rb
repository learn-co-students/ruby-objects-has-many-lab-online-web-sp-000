class Author 
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
  end
  
  def self.post_count
    return Post.all.count 
  end

end