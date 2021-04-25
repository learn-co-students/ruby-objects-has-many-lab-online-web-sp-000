class Author

  attr_accessor :name
  attr_reader :posts

  @@post_count = 1

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post_by_title(title)
    title = Post.new(title)
    self.add_post(title)
    title
  end

  def post_count
    self.posts.size
  end

  def self.post_count
    @@post_count
  end
end
