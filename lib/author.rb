class Author
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name)
    @name = name 
    end
    
    def posts
      Post.all.select {|post| post.author == self}
    end
    
    def add_post(post)
    post.author = self
    end 
    
    def add_post_by_title(title)
    new = Post.new(title) 
    new.author = self
    end
    
    end