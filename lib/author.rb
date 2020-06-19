class Author
  attr_accessor :name, :posts
  @@post_count = 0 # counter outside of initialize
  def initialize(name)
    @name = name
    @posts = [] # empty array post
  end
  def author_name # if there is no author, return nil
    if self.author
      self.author.name
    else
      nil
    end
  end
  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end
  def add_post_by_title(title)
    post = Post.new(title) # passing on a title into new post
    @posts << post # adds to the array of posts
    post.author = self # tells you who wrote the post, self (class)
    @@post_count += 1
  end
  def posts
    @posts
  end
  def self.post_count
    @@post_count
  end
end
