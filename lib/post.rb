class Post
  attr_accessor :title, :author

  def initialize(title="title")
    @title = title
    self.author = @author
  end

  def title
    @title
  end

  def self.author
    @author
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end