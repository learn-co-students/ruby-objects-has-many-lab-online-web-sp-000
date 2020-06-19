class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    add_post(post_title)
  end

  def self.post_count
    Post.all.count
  end
end
