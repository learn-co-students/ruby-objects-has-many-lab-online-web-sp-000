class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    title
  end

  def author_name
    if defined?(self.author.name)
      self.author.name
    end
  end

end
