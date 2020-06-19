class Post
  attr_accessor :name, :title, :author

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      self.author.name
    end
  end

end
