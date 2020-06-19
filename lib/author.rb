class Author
  attr_accessor :name, :posts

  @@all=[]

  def initialize(name)
    @name=name
    @posts=[]
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts<<post
    post.author=self
    @@all<<post
  end

  def add_post_by_title(title)
    post=Post.new(title)
    @posts<<post
    post.author=self
    @@all<<post
  end

  def self.post_count
    @@all.count
  end


end
