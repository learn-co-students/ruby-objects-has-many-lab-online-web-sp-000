class Post

  attr_accessor :author, :title, :genre

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def author_name
    self.author.name if author
  end

end
