class Post

  @@all = []

  def title=(input)
    @title = input
  end

  def title
    @title
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
    if !(author.posts.include?(self))
      author.add_post(self)
    end
  end

  def author
    @author
  end

  def author_name
    if (@author != nil)
      @author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
