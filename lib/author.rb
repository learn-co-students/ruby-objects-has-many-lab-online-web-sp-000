class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    Post.new(title).author = self
  end

  def self.post_count
    Post.all.length
  end
end
