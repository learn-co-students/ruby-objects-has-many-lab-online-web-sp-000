class Author

  attr_accessor :name, :posts

  @@all_posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@all_posts << post
  end

  def add_post_by_title(title)
    p = Post.new(title)
    @posts << p
    p.author = self
    @@all_posts << p
  end

  def self.post_count
    @@all_posts.length
  end

end
