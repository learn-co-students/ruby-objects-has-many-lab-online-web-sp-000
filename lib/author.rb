class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end
    
  def add_post(post_object)
    @posts << post_object
    post_object.author = self
  end
  
  def add_post_by_title(title)
    post_object = Post.new(title)
    add_post(post_object)
  end
  
  def posts
    @posts = Post.all.select {|post_object| post_object if post_object.author == self}
    @posts
  end
  
  def self.post_count
    Post.all.count
  end
  
end