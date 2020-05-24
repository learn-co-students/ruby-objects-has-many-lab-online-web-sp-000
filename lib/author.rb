class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def self.post_count
        Post.all.length
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        Post.new(title, self)
    end

end