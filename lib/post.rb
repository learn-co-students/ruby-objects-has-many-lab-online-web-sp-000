class Post

  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def author_name
    self.author
    if self.author == nil
      return nil
      else
        self.author.name
      end
  end

end
