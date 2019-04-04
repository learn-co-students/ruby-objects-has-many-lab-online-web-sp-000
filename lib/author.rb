class Author
  attr_accessor :name, :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end
  def author_name # if there is no author, return nil
    if self.author
      self.author.name
    else
      nil
    end
  end
  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  def posts
    @posts
  end
  def self.post_count
    @@post_count
  end
end
