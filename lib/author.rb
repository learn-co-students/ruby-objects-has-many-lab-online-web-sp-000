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

  def add_post(title)
    @posts << title
    title.author = self
    @@counter += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@counter += 1
  end

  def self.post_count
    @@counter
  end
end
