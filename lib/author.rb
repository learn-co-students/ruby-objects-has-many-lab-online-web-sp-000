class Author

  attr_accessor :name, :post, :title

@@post_count = 3

  def initialize(name)
    @name = name
    @title = title
  end

  def add_post(post)
    post.author = self
  end

def posts
  Post.all.select {|post| post.author == self}
end

def add_post_by_title(title)
  post = Post.new(title)
  @posts << post
  post.author = self
  @@post_count += 1
end

def self.post_count
  @@post_count
end

def title
end
end


end
