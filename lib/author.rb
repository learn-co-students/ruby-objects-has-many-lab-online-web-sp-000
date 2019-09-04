class Author

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
  end

  def posts
    Post.all
  end

  def self.post_count
    Post.all.count
  end

end
