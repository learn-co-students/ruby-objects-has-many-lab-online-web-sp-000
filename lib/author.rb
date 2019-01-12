class Author
  attr_accessor :name
  attr_reader :posts
  @@number_of_posts = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
    @@number_of_posts += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    self.add_post(post)
  end
  
  def self.post_count
    @@number_of_posts
  end
end