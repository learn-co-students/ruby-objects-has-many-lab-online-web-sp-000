class Author
  attr_accessor :name, :posts


  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
