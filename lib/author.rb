class Author
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|pst| pst.artist == self}
  end
  
  def add_post(pst)
    pst.author = self
  end
  
  def add_post_by_title(title)
    pst = Post.new(title)
    add_post(pst)
  end
  
  def post_count
  end
    
end