describe "Author" do

    

    class Author

        attr_accessor :name, :posts

        
        @@all = []

        def initialize(name)
            @name = name
            @posts = []
            @@all << self 
        end


        def add_post(post)
            post.author = self
        end


        def add_post_by_title(title)
            post = Post.new(title)
            add_post(post)
        end

        def self.post_count
            result = 0
            #binding.pry
           @@all.each do |author|
            result += author.posts.length
           end
           result
        end
    end
end


    