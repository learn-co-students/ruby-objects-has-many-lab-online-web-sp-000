class Post
  attr_accessor :title, :author, :author_name

@@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def author_name
    return nil if !self.author
    self.author.name
  end

  def self.all
    @@all
  end

end
