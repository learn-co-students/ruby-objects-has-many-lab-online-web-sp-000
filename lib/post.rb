class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author == nil ? nil: self.author.name
  end

end
