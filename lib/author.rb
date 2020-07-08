class Author
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    Post.all.filter{|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    total = 0
    @@all.each {|author| total += author.posts.count}
    total
  end


end
