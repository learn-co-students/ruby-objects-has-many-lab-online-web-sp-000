class Author
    attr_accessor :name

    @@all =[]

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post_by_title(name)
        post = Post.new(name)
        add_post(post)
        posts
    end

    def self.post_count
        Post.all.length
    end
end
