class Author

  attr_accessor :name

  @@all_authors =[]

  def initialize(name)
    @name = name
    @@all_authors << self
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new (title)
    add_post(post)
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    post_count = 0
    @@all_authors.each do |author|
      array = author.posts
      post_count += array.length
    end
    post_count
  end

end
