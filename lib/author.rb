class Author
  attr_accessor :name, :post, :author
  @@all = []


  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all << self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
    @@all << self
  end

  def self.post_count
    @@all.length
  end

end
