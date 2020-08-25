class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
