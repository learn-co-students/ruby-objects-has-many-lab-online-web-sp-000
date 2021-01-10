class Post
  attr_accessor :post, :author
  @@all = []
  def initialize(post)
    @post = post
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @post
  end

  def author
    @author
  end

  def author_name
    @author ? self.author.name : nil
  end

end
