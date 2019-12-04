class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    authors_posts = []
    Post.all.each do |post|
      if post.author == self
        authors_posts << post
      end
    end
    authors_posts
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    count = 0
    Post.all.each do |post|
      if post.author
        count += 1
      end
    end
    count
  end
end
