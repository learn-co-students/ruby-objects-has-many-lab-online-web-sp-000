class Author 
  attr_accessor :name
  @@total_posts = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts
  end
  
  def add_post(post_name)
    @posts << post_name
    post_name.author = self
    @@total_posts += 1
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    @posts << new_post
    new_post.author = self
    @@total_posts += 1
  end
  
  def self.post_count
    @@total_posts
  end
  
end