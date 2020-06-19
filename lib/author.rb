class Author
  attr_accessor :name, :posts
  # attr_reader :posts

  @@all_posts = []


  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all_posts << post unless @@all_posts.include?(post)
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@all_posts << post unless @@all_posts.include?(post)
  end

  def self.post_count
    @@all_posts.length
  end





end
