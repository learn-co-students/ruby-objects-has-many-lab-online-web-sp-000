class Post
    attr_accessor :title, :author
    def initialize(title)
        @title = title
        @@all << self
    end
    @@all = []

    def self.all
        @@all
    end

    def author_name
        self.author ? self.author.name : nil
    end

end