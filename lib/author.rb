class Author
  attr_accessor :name, :posts
  @@all_posts = []
  def initialize(name)
    @name = name
    @posts = []
  end
  def add_post (post)
    @posts << post
    post.author = self
    @@all_posts << post
  end
  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
    @@all_posts << post
  end
  def self.post_count
    @@all_posts.length
  end
end
