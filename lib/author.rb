class Author 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @posts = []
    self.class.all << self
  end
  
  def posts 
    @posts
  end
  
  def add_post(post)
    post.author = self
    self.posts << post
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    self.posts << post
  end
  
  def self.all
    @@all
  end
  
  def self.post_count
    self.all.collect {|author| author.posts}.flatten.count
  end
  
end