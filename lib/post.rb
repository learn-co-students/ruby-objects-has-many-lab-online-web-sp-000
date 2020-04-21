class Post
  attr_accessor :title, :author
  :post
  :post2
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def title
    @title
  end

  def author
    @author
  end

  def all
    @@all
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      self.author.name
    end
  end

end
