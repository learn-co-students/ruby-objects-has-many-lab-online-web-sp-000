class Post
  attr_accessor :name, :author, :title
  @@all = []
  def initialize(title)
    @title = title
    # @name = @title
    @@all << self

  end
  def self.all
    @@all
  end
  def author_name
    if defined?(@author.name) == nil
          nil
      else
          @author.name
      end
  end
end
