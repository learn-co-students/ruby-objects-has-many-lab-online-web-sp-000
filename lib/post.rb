class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author.nil? ? nil : self.author.name
  end

  def title
    @title
  end

  def author
    @author
  end
end
