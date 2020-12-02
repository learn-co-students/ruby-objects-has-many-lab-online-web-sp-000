class Author
  attr_accessor :name
  @@authors = []


  def initialize(name)
    @name = name
    @posts = []
    @@authors << self

  end

  def posts
    @posts
  end

  def add_post(post)
      post.author = self
    end

    def add_post_by_title(title)
      new_post = Post.new(title)
      new_post.author = self
    end

    def self.post_count
      count = 0
      @@authors.each do |author|
        author.posts.each do |post|
          count += 1
        end
      end
      count
    end

    def author
      self.name
    end

  end
