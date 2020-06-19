class Post
  attr_accessor :title , :author
  @@all =[]
  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self
  end
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
  def self.all
    @@all
  end
  def add_post_by_title(title)
    title = Post.new(title)
    self.title << title
    title.author = self
    @@posts_count += 1
  end
  def post_count(posts)

  end
end
