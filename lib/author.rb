class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  #shakespeare.add_post("post") 
  def add_post(post)
    self.posts << post
    post.author = self    
  end 
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
  end 
  
  # Author.post_count
  def self.post_count
    Post.all.count
  end 
  
end 