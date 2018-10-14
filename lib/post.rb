class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
  end


end
