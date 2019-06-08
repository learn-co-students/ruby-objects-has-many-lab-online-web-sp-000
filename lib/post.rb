class Post
    attr_accessor :title, :author
    
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end
end