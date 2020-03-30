class Author

  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

end