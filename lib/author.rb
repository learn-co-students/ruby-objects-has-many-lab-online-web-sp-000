class Author
  attr_accessor :name, :posts

  AUTHORS = []

  def initialize(name)
    @name = name
    @posts = []
    AUTHORS << self
  end

  def add_post(post)
    @posts << post
    post.add_author(self)
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    AUTHORS.inject(0) { |sum, author| sum + author.posts.size }
  end
end
