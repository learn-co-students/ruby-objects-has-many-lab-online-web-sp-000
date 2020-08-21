class Post


    @@all = []
    

attr_accessor :title, :author

    def initialize(title)
        @title = title
      @@all << self
    end

    def author= (author)
        @author = author
          author.posts << self
    end

    def author_name
        @author ? @author.name : nil
        end

        def self.all
            @@all
        end
    end
