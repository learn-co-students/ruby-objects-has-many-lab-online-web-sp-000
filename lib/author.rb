class Author
  attr_accessor :name, :title

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select { |posts| posts.author == self }
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end

  def self.post_count
    Post.all.size
  end

end
