class Author

    attr_accessor :name

    @@post_count = 1

    def initialize(name)
      @name = name
    end

    def posts
      Post.all.select { |post| post.author == self}
    end

    def add_post(post)
      @@post_count += 1
      Post.all << post
      post.author=self
    end

    def add_post_by_title(title)
        @@post_count += 1
        p = Post.new(title)
        p.author = self
        Post.all << p
    end

    def self.post_count
        @@post_count
    end

end
