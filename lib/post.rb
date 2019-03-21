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

  def self.title(title)
    @title = title
  end

  def author_name
   author.name if author
  end
end
