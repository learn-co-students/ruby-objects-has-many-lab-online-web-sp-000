class Author

    attr_accessor :name

    @@posts = []

    def initialize(name)
        @name = name
    end
    
    def posts
       @@posts
    end
    
    def add_post(post)
        @@posts << post
        post.author = self
    end
    
    def add_post_by_title(name)
        n = Post.new(name)
        add_post(n)
    end
    
    def self.post_count
        @@posts.size
    end
end
