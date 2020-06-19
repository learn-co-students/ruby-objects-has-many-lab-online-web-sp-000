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
    @author.name
  end

  def author_name
    if @author == nil
      return nil
    else
      return @author.name
    end
  end
end
