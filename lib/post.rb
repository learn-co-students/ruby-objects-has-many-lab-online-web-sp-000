class Post
  attr_accessor :name, :author

  @@all = []

  def initialize(name)
    @name = name
  end


def author=(author)
  @author = author
  author.posts(self) unless author.posts.include?(self)
end

  def all
    @all
  end

end
