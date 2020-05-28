class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @@all << self
    @title = title
  end

  def self.all
    @@all
  end

  def author_name
    author.name if author
  end


end
