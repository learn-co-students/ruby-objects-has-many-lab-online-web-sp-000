class Post
  attr_accessor :title, :author, :name
  @@all = []

  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author != nil
      self.author.name
    else
      return nil
    end
  end

end
