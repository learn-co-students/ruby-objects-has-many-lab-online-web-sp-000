class Post
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self

  end

  def author=(author)
    @author = author
    self.author.posts << self
  end

  def author
    @author
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      self.author.name
    end
  end
end
