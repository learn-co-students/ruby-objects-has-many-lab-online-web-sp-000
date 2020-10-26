class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    case self.author
    when nil
      return nil
    else
      return self.author.name
    end
  end

end
