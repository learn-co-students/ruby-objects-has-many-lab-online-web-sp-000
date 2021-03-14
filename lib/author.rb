class Author 
  attr_accessor :name
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    Post.all.select do |post|
      post.author == self
    end
  end 
  
  def add_post(post)
    @posts << post
    post.author = self 
    @@post_count += 1 
  end 
  
  def add_post_by_title(title_name)
    post = Post.new(title_name)
    add_post(post)
    @@post_count += 1 
  end
  
  def author_name
    self.author.name
  end
  
  def self.post_count 
    @@post_count
  end
end
