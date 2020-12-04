class Author 
  attr_accessor :name
  def initialize(name)
    @name = name
  end 
  
  def add_post(new_post)
    new_post.author = self
  end
  
  def posts
    return Post.all.select{|post| post.author == self}
  end
  
  def self.post_count
    return Post.all.length
  end
  
  def add_post_by_title(new_title)
    add_post(Post.new(new_title))
  end
    
end