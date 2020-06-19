class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title, author = nil)
      @title = title
      @author = author
      @@all << self
    end

    def author_name
      if self.author
        self.author.name
      else
        nil
      end
    end

  def self.all
    @@all
  end
end
