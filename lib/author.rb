class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name   #author's name
        @posts = []
    end

    def add_post(post)
       @posts << post  #add song to list of songs under artist name
       post.author = self  #allow for reverse look up
       #@@song_count +=1    #increase song count by 1
    end

    def add_post_by_title(name)
        post = Post.new(name)
        @posts << post
        post.author = self
    end

    def self.post_count
      Post.all.length
    end

    def posts
        Post.all.select {|post| post.author == self}
    end
end
