class Author
  attr_accessor :name
  @@counter = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@counter += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@counter += 1
  end

  def self.post_count
    @@counter
  end

end
