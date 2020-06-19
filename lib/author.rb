require 'pry'

class Author

  attr_accessor :name, :title
@@posts_count = 0


  def initialize(name)
    @name = name
    @title = title
    @posts = []

  end
  def posts
    @posts
  end


  def add_post(post)
    self.posts << post
    # binding.pry
    post.author = self
    # posts.name = self
    @@posts_count += 1
  end



      def add_post_by_title(title)

      posts = Post.new(title)
      self.posts << posts
      posts.author = self
      # binding.pry
      @@posts_count += 1
    end



    def self.post_count
      @@posts_count
    end


end

class Post
  attr_accessor :name, :title, :author

@@all = []

def initialize(title)
  # @name = name
  @title = title
  @@all << self
end

def author_name
  # binding.pry
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
