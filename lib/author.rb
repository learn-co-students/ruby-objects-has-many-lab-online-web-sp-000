class Author
  attr_accessor :name, :posts
  @@post = []
  
  def initialize(name)
    self.name = name
    self.posts = []
  end
  
  def add_post(title)
    title.author = self
    self.posts << title
    @@post << title
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    self.posts << title
    @@post << title
  end
  
  def self.post_count
    @@post.length
  end
end