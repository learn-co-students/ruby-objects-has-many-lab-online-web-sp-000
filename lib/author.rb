class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def add_post(title)
    title.author = self 
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    Post.all.length
  end
  
  
  def posts 
    Post.all.select {|title| title.author == self}
  end
    
  
  
  
end