class Author
  
  attr_accessor :name, :posts
  
  def initialize (name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.each do |i|
      if i.author == self
        @posts.push(i)
      end
    end
  end
  
  def add_post(postObject)
    postObject.author = self
  end
  
  def add_post_by_title(newPostTitle)
    newPostObject = Post.new(newPostTitle)
    newPostObject.author = self
  end
  
  def self.post_count
    Post.all.count
  end
end