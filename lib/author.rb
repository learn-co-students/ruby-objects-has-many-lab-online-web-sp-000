class Author
attr_accessor :name, :posts
@@all_posts = 0
  def initialize(name)
    @name = name
    @posts = []

  end #of initialize

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all_posts +=1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@all_posts += 1
  end

  def self.post_count
    @@all_posts
  end

end # of author
