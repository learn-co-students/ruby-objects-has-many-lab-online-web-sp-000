class Author 
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self} 
  end
  
  def add_post(name)
    name.author = self
  end
  
  def add_post_by_title(title)
    new = Post.new(title)
    add_post(new)
  end
  
  def self.post_count
    Post.all.count
  end
  
end