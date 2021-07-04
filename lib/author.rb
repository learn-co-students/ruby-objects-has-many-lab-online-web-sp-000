class Author
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    all_posts = []

    self.all.each {|author| all_posts << author.posts}

    all_posts.flatten.count
  end
end
