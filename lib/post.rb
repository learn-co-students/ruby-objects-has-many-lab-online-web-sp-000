#rspec ./spec/song_spec.rb --f-f

class Post
  attr_accessor :title, :author, :name
  @@all = []
    def initialize(title)
      @title = title
      @name = title
      @@all << self
    end

    def author=(author)
      @author = author
      author.posts << self
    end

    def author_name
      if !self.author
        return nil
      else
        self.author.name
      end
    end

    def self.all
      @@all
    end

end
