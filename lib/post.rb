class Post
  attr_accessor :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(name)
    @author = name
    name.posts << self
  end

  def author
    @author
  end

  def author_name
    if @author == nil
      return nil
    end
    @author.name
  end
end
