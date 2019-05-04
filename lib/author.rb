class Author
  attr_accessor :name
  
  @@authors = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
  end
  
  def self.post_count
    post_count = 0
    @@authors.each do |author|
      post_count += author.posts.count
    end
    post_count
  end
  
end