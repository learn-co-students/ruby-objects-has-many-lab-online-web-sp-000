class Post

  attr_accessor :name, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  # # all posts get stored with this method
  def self.all
    @@all
  end

  # includes a title
  def title
    @title
  end

  # knows the name of its author
  # returns nil if the post does not have an author
  def author_name
    self.author.name if self.author
  end

end
