class Author 
  
    attr_accessor :name, :posts
    
    def initialize(name)
      
      @name = name
      #@posts = []
      
    end
    
    def name
      
      @name
      
    end
    
    def posts
      
      Post.all.select {|post| post.author == self}
      
    end
    
    def add_post(post)
      
      post.author = self
      #@posts.push(post)
      
    end
    
    def add_post_by_title(post_title)
      
      adding_post = Post.new(post_title)
      add_post(adding_post)
      
    end
    
    def self.post_count
      
      Post.all.length
      
    end
end