class Post
  attr_accessor :title, :author, :name
  @@all = []

  def initialize(title)
    @title = title
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      nil
    else
      self.author.name
    end
  end

end
