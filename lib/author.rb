class Author
  @@all = []
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@all.collect {|e| e.posts}.flatten.compact.uniq.length
  end

end
