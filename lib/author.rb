class Author 
  attr_accessor :posts, :name, :title
  
  def initialize(name)
    @name = name
    @posts = []
  end
    
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(post_title)
    @posts << post_title
    author.name = self if author.name != self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    Post.author = self
  end
    
  def self.post_count 
    Post.all.length 
  end

end