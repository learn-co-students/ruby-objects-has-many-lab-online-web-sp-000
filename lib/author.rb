class Author
  attr_accessor :name, :posts
  @@all_posts = []
  
  def initialize (name)
    @name = name
    @posts = []
  end
  
  def add_post(post_instance)
    post_instance.author = self
    @posts << post_instance
    @@all_posts << post_instance
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)
  end
  
  def self.post_count
    @@all_posts.length
  end
end