class Post
    @@all = []

    attr_accessor :title, :author

    def initialize(title)
        @title = title
        @author = nil
        @@all << self
    end

    def self.all
        @@all
    end    

    def author_name
        if (author != nil)
            return self.author.name
        else
            return nil
        end
    end
end