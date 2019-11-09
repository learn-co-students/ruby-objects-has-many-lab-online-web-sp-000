class Author
  attr_accessor :name, :post


@@post_count = 0


  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
   post = Post.new(title)
   post.author = self
   @@post_count += 2
  end

def self.post_count
   @@post_count
 end

  def posts
    Post.all.select {|post| post.author == self}
  end
end
