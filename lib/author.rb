class Author

  attr_accessor :name

  @@allPosts = 0

  def initialize(name)
    @name = name
    @posts =[]
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@allPosts += 1
    if (post.author != self)
      post.author = self
    end
  end

  def add_post_by_title(title)
    newPost = Post.new(title)
    @@allPosts += 1
    newPost.author = self
  end

  def self.post_count
    rVal = 0
    Post.all.each do | post |
      if (post.author != nil)
        rVal += 1
      end
    end
    return rVal
  end

end
