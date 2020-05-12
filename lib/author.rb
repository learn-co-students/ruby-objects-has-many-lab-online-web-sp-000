class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        posts = []
        Post.all.each do |post|
            if (post.author == self)
                posts.push(post)
            end
        end
        posts       
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        count = Post.all.count
        count
    end   
end