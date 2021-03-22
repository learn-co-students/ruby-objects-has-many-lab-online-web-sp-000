class Author
  attr_accessor :name, :post, :title
  def initialize(name) #works
    @name = name
    @posts = []
  end
  def name #works
    @name
  end
  def posts #works
  Post.all.select {|post| post.author == self}
  end
  def add_post(post) #works
  post.author = self
  end
  def add_post_by_title(title)
  writer = Post.new(title)
  add_post(writer)
  end
  def self.post_count
    Post.all.count
  end
end
