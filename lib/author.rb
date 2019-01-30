class Author
  attr_accessor :name, :posts
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    add_post(post)
  end

  def self.post_count
    all_posts = 0
    @@all.each {|author| all_posts += author.posts.size}
    all_posts
  end

end
