class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end
