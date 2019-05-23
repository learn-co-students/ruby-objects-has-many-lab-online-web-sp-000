class Author 
  attr_accessor :name, :posts 
  
  ALL_POSTS = []
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(post) 
    post.author = self 
    @posts << post
    ALL_POSTS << post
  end 
  def add_post_by_title(title) 
    post = Post.new(title)
    post.author = self 
    @posts << post  
    ALL_POSTS << post
  end 
  def self.post_count 
    ALL_POSTS.count
  end 
end