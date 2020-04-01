class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end

  def self.all
    @@all
  end

end
